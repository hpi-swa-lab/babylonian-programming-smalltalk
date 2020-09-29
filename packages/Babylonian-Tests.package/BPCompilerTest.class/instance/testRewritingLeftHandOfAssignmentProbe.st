tests
testRewritingLeftHandOfAssignmentProbe
	
	self 
		assertCompilerRewrites: 
'method
	| variable |
	"<bpProbe id: 1>"variable := 2 raisedTo: 3"</bpProbe>".'
		to:
'method
	<layer: #bpInstrumented>
	| variable |
	(self bpTraceAssignmentOf: [variable := 2 raisedTo: 3] before: {''variable'' . variable} forProbe: 1 inContext: thisContext).'.