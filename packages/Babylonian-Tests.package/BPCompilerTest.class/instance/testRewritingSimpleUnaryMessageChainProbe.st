tests - annotations
testRewritingSimpleUnaryMessageChainProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 negated"</bpProbe>" + 3'
		to:
'method
	<layer: #bpInstrumented>
	(self bpTrace: [2 negated] forProbe: 1 inContext: thisContext) + 3'