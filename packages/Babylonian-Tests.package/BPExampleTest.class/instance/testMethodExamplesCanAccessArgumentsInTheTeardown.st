tests - running
testMethodExamplesCanAccessArgumentsInTheTeardown
	
	| example result |
	example := self createExamples first.
	example tearDownScript: 'Notification signal: aCollection asString'.
	result := nil.
	[example runTearDownWith: example prepareRunState]
		on: Notification
		do: [:n | result := n messageText].
	self assert: '#(1 2 3)' equals: result.