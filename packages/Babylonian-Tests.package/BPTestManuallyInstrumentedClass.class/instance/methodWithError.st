example methods
methodWithError

	<exampleNamed: 'some example'> 
	| a | 
	a := self bpReplace: [2] with: [4] for: 'some example'.
	^ self bpTrace: [a / 0] forProbe: 10 inContext: thisContext