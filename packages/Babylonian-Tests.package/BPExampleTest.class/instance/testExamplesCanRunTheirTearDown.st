tests - running
testExamplesCanRunTheirTearDown
	
	| example |
	example := self createExamples first.
	example tearDownScript: 'Notification signal'.
	self should: [example runTearDown] raise: Notification.