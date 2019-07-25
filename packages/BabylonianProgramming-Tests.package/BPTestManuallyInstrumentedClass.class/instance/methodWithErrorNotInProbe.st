example methods
methodWithErrorNotInProbe
	 
	<exampleNamed: 'some example'>
	| a |
	a := self bpReplace: [2] with: [4] for: 'some example'.
	a / 0.
	^ self bpTrace: [a] forProbe: 10 inContext: thisContext