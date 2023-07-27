tests - script examples
testScriptExamplesCanAccessArgumentsInTheTeardown
	
	| example result |
	example := self createExamples second.
	example 
		setUpScript: 'setupVariable := #(1 2 3).';
		tearDownScript: 'Notification signal: setupVariable asString'.
	result := nil.
	[example executeSynchronously]
		on: Notification
		do: [:n | result := n messageText].
	self assert: '#(1 2 3)' equals: result.