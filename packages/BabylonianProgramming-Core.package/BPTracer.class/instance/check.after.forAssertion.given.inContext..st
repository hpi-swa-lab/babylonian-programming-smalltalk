asserting
check: assertionBlock after: codeBlock forAssertion: anAssertionId given: anExampleName inContext: aContext

	| result |
	result := codeBlock value.
	(self exampleNameMatches: anExampleName) ifTrue: [
		self trace
			trace: assertionBlock value 
			forAssertion: anAssertionId
			inContext: aContext].
	^ result

	