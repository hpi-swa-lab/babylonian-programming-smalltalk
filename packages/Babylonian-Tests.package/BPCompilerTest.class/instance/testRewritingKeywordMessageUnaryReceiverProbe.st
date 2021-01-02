tests - annotations
testRewritingKeywordMessageUnaryReceiverProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 negated"</bpProbe>" raisedTo: 3'
		to:
'method
	<layer: #bpInstrumented>
	(self bpTrace: [2 negated] forProbe: 1 inContext: thisContext) raisedTo: 3'.