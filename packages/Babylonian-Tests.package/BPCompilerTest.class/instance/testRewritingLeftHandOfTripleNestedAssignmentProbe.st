tests
testRewritingLeftHandOfTripleNestedAssignmentProbe
	
	self 
		assertCompilerRewrites: 
'method
	| variable |
	"<bpProbe id: 3>""<bpProbe id: 2>""<bpProbe id: 1>"variable := 2 raisedTo: 3"</bpProbe>""</bpProbe>""</bpProbe>".'
		to:
'method
	<layer: #bpInstrumented>
	| variable |
(self bpTraceAssignmentOf: [(self bpTraceAssignmentOf: [(self bpTraceAssignmentOf: [variable := 2 raisedTo: 3] before: {''variable'' . variable} forProbe: 1 inContext: thisContext)] before: {} forProbe: 2 inContext: thisContext)] before: {} forProbe: 3 inContext: thisContext).'