tests - annotations
testRewritingSimpleUnaryMessageChainProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 negated"</bpProbe>" + 3'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpTrace: [2 negated] forProbe: 1 inContext: thisContext) + 3) at: thisContext'