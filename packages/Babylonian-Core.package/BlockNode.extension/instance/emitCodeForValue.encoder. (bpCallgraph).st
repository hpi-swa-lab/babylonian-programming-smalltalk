*Babylonian-Core-Callgraph-ByteCode
emitCodeForValue: stack encoder: encoder
	<layer: #bpCallgraph>	
	encoder supportsFullBlocks ifTrue: [^self error: 'full blocks not supported'].
	
	
	copiedValues do:
		[:copiedValue| copiedValue emitCodeForValue: stack encoder: encoder].
	
	"<custom code>"
	(self isRootBlock: encoder) ifFalse: [self emitNOPs: encoder stack: stack n: (self additionalSizeBeforeBlock: encoder)  type: #beforeBlock].
	"</custom code>"
	
	closureCreationNode pc: encoder nextPC.
	encoder
		genPushClosureCopyNumCopiedValues: copiedValues size
		numArgs: arguments size
		jumpSize: size.
	stack
		pop: copiedValues size;
		push: 1.
	"Emit the body of the block"
	self emitCodeForEvaluatedClosureValue: stack encoder: encoder