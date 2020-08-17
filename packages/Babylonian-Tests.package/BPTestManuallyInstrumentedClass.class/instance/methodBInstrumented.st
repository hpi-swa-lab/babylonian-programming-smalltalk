example methods
methodBInstrumented 
	| t1 |
	t1 := 'hallo b'.
	^ self
		bpTrace: [t1]
		forProbe: 11
		inContext: thisContext