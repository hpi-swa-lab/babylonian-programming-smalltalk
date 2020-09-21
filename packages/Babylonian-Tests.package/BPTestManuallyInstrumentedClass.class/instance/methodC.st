example methods
methodC
	| a |
	a := 2.
	^ self bpTrace: [a] through: [:r | r squared] forProbe: 10 inContext: thisContext