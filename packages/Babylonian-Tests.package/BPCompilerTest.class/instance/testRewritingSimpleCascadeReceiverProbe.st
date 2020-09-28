tests - annotations - cascades
testRewritingSimpleCascadeReceiverProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2"</bpProbe>" negated; moreNegated'
		to:
'method
	<layer: #bpInstrumented>
	(self bpTrace: [2] forProbe: 1 inContext: thisContext) negated; moreNegated'