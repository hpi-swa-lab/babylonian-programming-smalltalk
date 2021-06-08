example methods
methodWithSelfCallInExpression
	
	| a |
	a := 2.
	^ self bpTrace: [a] through: [self methodBInstrumented] forProbe: 10 inContext: thisContext