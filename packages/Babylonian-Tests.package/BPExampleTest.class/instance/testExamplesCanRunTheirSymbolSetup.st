tests - running
testExamplesCanRunTheirSymbolSetup
	
	| example |
	example := self createExamples first.
	example setUpScript: '#basicSetUpForExamples'.
	self should: [example runSetUp] raise: Notification.