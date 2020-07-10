tests - annotations
testRewritingKeywordMessageBinaryArgumentProbe

	self 
		assertCompilerRewrites: 
'method
	2 raisedTo: "<bpProbe id: 1>"3 + 4"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 raisedTo: (self bpTrace: [3 + 4] forProbe: 1 inContext: thisContext)) at: thisContext'