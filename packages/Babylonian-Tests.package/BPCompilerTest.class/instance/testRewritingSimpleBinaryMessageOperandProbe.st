tests - annotations
testRewritingSimpleBinaryMessageOperandProbe

	self 
		assertCompilerRewrites: 
'method
	2 negated + "<bpProbe id: 1>"3 negated"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 negated + (self bpTrace: [3 negated] forProbe: 1 inContext: thisContext)) at: thisContext'