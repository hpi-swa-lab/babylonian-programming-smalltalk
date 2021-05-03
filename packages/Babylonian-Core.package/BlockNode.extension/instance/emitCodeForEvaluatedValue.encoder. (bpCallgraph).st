*Babylonian-Core-Callgraph-ByteCode
emitCodeForEvaluatedValue: stack encoder: encoder
	
	<layer: #bpCallgraph>
	| position |
	position := stack position.
	
	"<custom code>"
	self optimized ifFalse: [
		self 
			emitNOPs: encoder 
			stack: stack 
			n: (self additionalSize: encoder) 
			type: ((self isRootBlock: encoder) ifTrue: [#beginRoot] ifFalse: [#begin])].
	"</custom code>"
	
	self emitCodeExceptLast: stack encoder: encoder.
	statements last emitCodeForBlockValue: stack encoder: encoder.
	self assert: stack position - 1 = position