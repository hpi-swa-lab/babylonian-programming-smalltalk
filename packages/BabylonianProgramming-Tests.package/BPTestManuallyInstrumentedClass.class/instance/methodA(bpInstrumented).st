as yet unclassified
methodA
	<layer: #bpInstrumented>
	| a |
	a := 2.
	^ self bpTrace: a forId: 10 forExpression: 'a' inContext: thisContext