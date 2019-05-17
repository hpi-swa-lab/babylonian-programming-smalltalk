asserting
check: aBlock forAssertion: anAssertionId given: anExampleName inContext: aContext

	^ self example exampleName = anExampleName
		ifTrue: [self trace
					trace: aBlock value 
					forAssertion: anAssertionId
					inContext: aContext]

	