*Babylonian-Core-Callgraph-ByteCode
generate: trailer using: aCompiledMethodClass
	"The receiver is the root of a parse tree. Answer an instance of aCompiledMethodClass.
	 The argument, trailer, is arbitrary but is typically either the reference to the source code
	 that is stored with every CompiledMethod, or an encoding of the method's temporary names."

	| method doInstrument |
	<layer: #bpCallgraph>
	"<custom code>"
	doInstrument := ("block isQuick not and: ["primitive == 0"]").
	"doInstrument ifTrue: [temporaries asOrderedCollection add: TempVariableNode new]."
	"</custom code>"
	
	self generate: trailer
		using: aCompiledMethodClass
		ifQuick:
			[:m |
			  m	literalAt: 2 put: encoder associationForClass;
				properties: properties.
			^m].
	
	method := encoder generateMethodOfClass: aCompiledMethodClass trailer: trailer from: self.
	
	"<custom code>"
	"initialize our custom method state object"
	doInstrument ifTrue: [ | state |
		state := BPByteCodeMethodState new.
		state setNOPPositions: bpCallgraphNOPs.
		properties := properties copyWith: #bpByteCodeMethodState -> state].
	"</custom code>"
	method properties: properties.
	^method