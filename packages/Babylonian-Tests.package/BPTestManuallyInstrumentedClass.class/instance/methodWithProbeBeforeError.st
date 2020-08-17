example methods
methodWithProbeBeforeError

	<exampleNamed: 'some example'>
	| a |
	a := 2.  
	self bpTrace: [a] forProbe: 10 inContext: thisContext.
	^ a / 0