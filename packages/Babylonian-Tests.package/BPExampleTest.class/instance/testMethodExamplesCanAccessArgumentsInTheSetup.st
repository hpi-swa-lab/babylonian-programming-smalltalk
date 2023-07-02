tests - running
testMethodExamplesCanAccessArgumentsInTheSetup
	
	| example result |
	example := self createExamples first.
	example setUpScript: 'Notification signal: aCollection asString'.
	result := nil.
	[example runSetUpWith: example prepareRunState]
		on: Notification
		do: [:n | result := n messageText].
	self assert: '#(1 2 3)' equals: result.