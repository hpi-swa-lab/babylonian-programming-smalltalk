tests - annotations
testRewritingKeywordMessageArgumentProbe
	
	self 
		assertCompilerRewrites: 
'method
	2 raisedTo: "<bpProbe id: 1>"3"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	2 raisedTo: (self bpTrace: [3] forProbe: 1 inContext: thisContext)'