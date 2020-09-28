tests - annotations - cascades
testRewritingSimpleCascadeUnaryMessageProbe
	
	self 
		assertCompilerRewrites: 
'method
	2 "<bpProbe id: 1>"negated"</bpProbe>"; moreNegated'
		to:
'method
	<layer: #bpInstrumented>
	2 in: [:bpr | (self bpTrace: [bpr negated] forProbe: 1 inContext: thisContext)]; moreNegated'