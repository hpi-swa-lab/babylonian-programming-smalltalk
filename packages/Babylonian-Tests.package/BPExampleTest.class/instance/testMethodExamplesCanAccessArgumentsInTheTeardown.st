tests - running
testMethodExamplesCanAccessArgumentsInTheTeardown
	
	| example result |
	example := self createExamples first.
	example tearDownScript: 'Notification signal: aCollection asString'.
	result := nil.
	[example runTearDown]
		on: Notification
		do: [:n | result := n messageText].
	self assert: '1' equals: result.