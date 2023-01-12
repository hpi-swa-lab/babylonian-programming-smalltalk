tests - annotations
testRewritingSimpleTypeProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpTypeProbe id: 1>"2 + 3"</bpTypeProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	(self bpTrace: [2 + 3] through: [:result | result class] forProbe: 1 inContext: thisContext)'.