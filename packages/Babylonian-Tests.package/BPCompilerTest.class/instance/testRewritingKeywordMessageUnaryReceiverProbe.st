tests - annotations
testRewritingKeywordMessageUnaryReceiverProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 negated"</bpProbe>" raisedTo: 3'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpTrace: [2 negated] forProbe: 1 inContext: thisContext) raisedTo: 3) at: thisContext'