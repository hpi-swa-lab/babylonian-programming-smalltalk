tests - running
testMethodExamplesCanAccessArgumentsInTheSetup
	
	| example result |
	example := self createExamples first.
	example setUpScript: 'Notification signal: aCollection asString'.
	result := nil.
	[example runSetUp]
		on: Notification
		do: [:n | result := n messageText].
	self assert: '1' equals: result.