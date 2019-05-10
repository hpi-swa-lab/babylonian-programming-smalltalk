as yet unclassified
methodAWithExamplesAndReplacement
	<exampleNamed: 'some example'>
	<exampleNamed: 'another example'>
	<layer: #bpInstrumented>
	| a |
	a := self bpReplace: [2] with: 4 for: 'some example'.
	^ self bpTrace: a forId: 10 forExpression: 'a' inContext: thisContext