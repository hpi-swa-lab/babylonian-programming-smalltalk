asserting
check: assertionBlock after: codeBlock forAssertion: anAssertionId given: anExampleName inContext: aContext

	| result |
	result := codeBlock value.
	self example exampleName = anExampleName ifTrue: [
		self trace
				trace: assertionBlock value 
				forAssertion: anAssertionId
				inContext: aContext].
	^ result

	