asserting
check: assertionBlock after: codeBlock forAssertion: anAssertionId inContext: aContext

	| result |
	result := codeBlock value.
	self trace
		trace: assertionBlock value 
		forAssertion: anAssertionId
		inContext: aContext.
	^ result

	