example methods
methodAWithExamplesAndNestedProbeInReplacement
	<exampleNamed: 'some example'>
	<exampleNamed: 'another example'>
	| a |
	a := self bpReplace: [self bpReplace: [self bpTrace: 2 forProbe: 10 inContext: thisContext] with: [4] for: 'some example'] with: 10 for: 'another example'.
	^ 1