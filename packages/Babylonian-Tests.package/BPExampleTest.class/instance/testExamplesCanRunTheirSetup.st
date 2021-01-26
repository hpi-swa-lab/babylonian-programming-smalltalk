tests - running
testExamplesCanRunTheirSetup
	
	| example |
	example := self createExamples first.
	example setUpScript: 'Notification signal'.
	self should: [example runSetUp] raise: Notification.