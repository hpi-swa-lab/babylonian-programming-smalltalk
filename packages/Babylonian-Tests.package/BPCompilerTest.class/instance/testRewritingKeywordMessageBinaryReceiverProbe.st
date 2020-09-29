tests - annotations
testRewritingKeywordMessageBinaryReceiverProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 + 3"</bpProbe>" raisedTo: 3'
		to:
'method
	<layer: #bpInstrumented>
	(self bpTrace: [2 + 3] forProbe: 1 inContext: thisContext) raisedTo: 3'