tests - annotations
testRewritingSimpleExpressionProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 + 3"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpTrace: [2 + 3] forProbe: 1 inContext: thisContext)) at: thisContext'