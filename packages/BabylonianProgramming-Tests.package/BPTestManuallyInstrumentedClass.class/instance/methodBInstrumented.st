example methods
methodBInstrumented
	| t1 |
	t1 := 'hallo b'.
	^ self
		bpTrace: t1
		forId: 11
		inContext: thisContext