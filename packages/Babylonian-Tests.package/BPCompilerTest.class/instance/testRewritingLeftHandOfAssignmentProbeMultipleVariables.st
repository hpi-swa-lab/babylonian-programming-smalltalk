tests
testRewritingLeftHandOfAssignmentProbeMultipleVariables
	
	self 
		assertCompilerRewrites: 
'method
	| variable |
	"<bpProbe id: 1>"variable1 := variable2 := 2 raisedTo: 3"</bpProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	| variable |
	(self bpTraceAssignmentOf: [variable1 := variable2 := 2 raisedTo: 3] before: {''variable1'' . variable1 . ''variable2'' . variable2} forProbe: 1 inContext: thisContext)'