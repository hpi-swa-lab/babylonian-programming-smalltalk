tests
testRewritingLeftHandOfAssignmentProbe

	self 
		assertCompilerRewrites: 
'method
	| variable |
	"<bpProbe id: 1>"variable := 2 raisedTo: 3"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	| variable |
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpTraceAssignmentOf: [variable := 2 raisedTo: 3] before: {''variable'' . variable} forProbe: 1 inContext: thisContext)) at: thisContext'.