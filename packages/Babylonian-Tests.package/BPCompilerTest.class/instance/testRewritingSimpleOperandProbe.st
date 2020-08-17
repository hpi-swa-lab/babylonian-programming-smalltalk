tests
testRewritingSimpleOperandProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2"</bpProbe>" + 3'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpTrace: [2] forProbe: 1 inContext: thisContext) + 3) at: thisContext'