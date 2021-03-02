*Babylonian-Core-Callgraph-ByteCode
generateMethodOfClass: aCompiledMethodClass trailer: trailer from: methodNode
	"The receiver is the root of a parse tree. Answer an instance of aCompiledMethodClass.
	 The argument, trailer, is arbitrary but is typically either the reference to the source code
	 that is stored with every CompiledMethod, or an encoding of the method's temporary names."
	<layer: #bpCallgraph>

	| primErrNode blkSize nLits locals literals header method stack |
	primErrNode := methodNode primitiveErrorVariableName ifNotNil:
						[self fixTemp: methodNode primitiveErrorVariableName].
	methodNode ensureClosureAnalysisDone.
	self rootNode: methodNode. "this is for BlockNode>>sizeCodeForClosureValue:"
	blkSize := (methodNode block sizeCodeForEvaluatedValue: self)
				+ (methodNode primitive > 0
					ifTrue: [self sizeCallPrimitive: methodNode primitive]
					ifFalse: [0])
				+ (primErrNode
					ifNil: [0]
					ifNotNil:
						[primErrNode
							index: methodNode arguments size + methodNode temporaries size;
							sizeCodeForStore: self "The VM relies on storeIntoTemp: (129)"]).
	locals := methodNode arguments, methodNode temporaries, (primErrNode ifNil: [#()] ifNotNil: [{primErrNode}]).
	self noteBlockExtent: methodNode block blockExtent hasLocals: locals.
	header := self computeMethodHeaderForNumArgs: methodNode arguments size
					numTemps: locals size "<custom code>" + 1 "</custom code>"
					numLits: (nLits := (literals := self allLiterals) size)
					primitive: methodNode primitive.
	method := trailer
					createMethod: blkSize
					class: aCompiledMethodClass
					header: header.
	1 to: nLits do:
		[:lit |
		(method literalAt: lit put: (literals at: lit)) isCompiledCode ifTrue:
			[(literals at: lit) outerCode: method]].
	self streamToMethod: method.
	stack := ParseStack new init.
	methodNode primitive > 0 ifTrue:
		[self genCallPrimitive: methodNode primitive].
	primErrNode ifNotNil:
		[primErrNode emitCodeForStore: stack encoder: self].
	stack position: method numTemps.
	[methodNode block emitCodeForEvaluatedValue: stack encoder: self]
		on: Error "If an attempt is made to write too much code the method will be asked"
		do: [:ex|  "to grow, and the grow attempt will fail in CompiledCode class>>#newMethodViaNewError"
			ex signalerContext sender method = (CompiledCode class>>#newMethodViaNewError)
				ifTrue: [^self error: 'Compiler code size discrepancy']
				ifFalse: [ex pass]].
	stack position ~= (method numTemps + 1) ifTrue:
		[^self error: 'Compiler stack discrepancy'].
	stream position ~= (method size - trailer size) ifTrue:
		[^self error: 'Compiler code size discrepancy'].
	method needsFrameSize: stack size - method numTemps.
	^method