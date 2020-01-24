tests
testRewritingOperandInExpressionProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2"</bpProbe>" + 3'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlockEntered: thisContext.
(self bpTrace: [2] forProbe: 1 inContext: thisContext) + 3'