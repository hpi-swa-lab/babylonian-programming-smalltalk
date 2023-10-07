tests
testRewritingLeftHandOfDoubleNestedAssignmentProbe
	
	self 
		assertCompilerRewrites: 
'method
	| variable |
	"<bpProbe id: 2>""<bpProbe id: 1>"variable := 2 raisedTo: 3"</bpProbe>""</bpProbe>".'
		to:
'method
	<layer: #bpInstrumented>
	| variable |
(self bpTraceAssignmentOf: [(self bpTraceAssignmentOf: [variable := 2 raisedTo: 3] before: {''variable'' . variable} forProbe: 1 inContext: thisContext)] before: {} forProbe: 2 inContext: thisContext).'