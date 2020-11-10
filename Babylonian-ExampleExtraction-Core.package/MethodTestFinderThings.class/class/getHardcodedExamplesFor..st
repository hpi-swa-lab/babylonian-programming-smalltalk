as yet unclassified
getHardcodedExamplesFor: aMethod

	^ { self newExampleNamed: 'number' with: {42} for: aMethod.
	self newExampleNamed: 'string' with: {'helloWord'} for: aMethod.
	self newExampleNamed: 'collection' with: {#(1 2 3 4 5)} for: aMethod.
	"self newExampleNamed: 'two' with: {1. 2} for: aMethod"}