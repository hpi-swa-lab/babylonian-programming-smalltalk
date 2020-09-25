tests - annotations
testRewritingKeywordMessageUnaryArgumentProbe
	
	self 
		assertCompilerRewrites: 
'method
	2 raisedTo: "<bpProbe id: 1>"3 negated"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	2 raisedTo: (self bpTrace: [3 negated] forProbe: 1 inContext: thisContext)'