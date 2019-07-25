example methods
methodAWithExamplesAndNestedReplacement
	<exampleNamed: 'some example' > 
	<exampleNamed: 'another example' > 
	| a |
	a := self bpReplace: [self bpReplace: [2] with: [4] for: 'some example'] with: 10 for: 'another example'.
	^ self bpTrace: [a] forProbe: 10 inContext: thisContext