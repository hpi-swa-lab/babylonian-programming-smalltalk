tests - annotations - cascades
testRewritingSimpleCascadeUnaryMessageProbe

	self 
		assertCompilerRewrites: 
'method
	2 "<bpProbe id: 1>"negated"</bpProbe>"; moreNegated'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 in: [:bpr | (self bpTrace: [bpr negated] forProbe: 1 inContext: thisContext)]; moreNegated) at: thisContext'