tests - annotations
testRewritingSimpleExpressionExpressionProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1 expression: [:result | result asFloat]>"2 + 3"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	(self bpTrace: [2 + 3] through: [:result | result asFloat] forProbe: 1 inContext: thisContext)'