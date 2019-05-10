example methods
methodAWithExamplesAndReplacement
	<exampleNamed: 'some example'>
	<exampleNamed: 'another example'>
	<bpInstrumented>
	| a |
	a := self bpReplace: [2] with: 4 for: 'some example'.
	^ self bpTrace: a forId: 10 forExpression: 'a' inContext: thisContext