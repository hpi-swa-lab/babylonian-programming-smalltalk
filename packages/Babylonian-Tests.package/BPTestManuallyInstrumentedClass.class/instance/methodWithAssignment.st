example methods
methodWithAssignment
	| a |
	a := 62.
	self bpTraceAssignmentOf: [a := 2] before: {'a' . a} forProbe: 1 inContext: thisContext.
	^ a