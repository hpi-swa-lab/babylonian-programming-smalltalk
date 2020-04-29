tests - annotations
testRewritingUnaryInBinaryMessageChainProbe

	self 
		assertCompilerRewrites: 
'method
	2 + "<bpProbe id: 1>"3 negated"</bpProbe>" + 4'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 + (self bpTrace: [3 negated] forProbe: 1 inContext: thisContext) + 4) at: thisContext'