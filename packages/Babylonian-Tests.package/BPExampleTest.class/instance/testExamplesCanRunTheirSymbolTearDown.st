tests - running
testExamplesCanRunTheirSymbolTearDown
	
	| example |
	example := self createExamples first.
	example tearDownScript: '#basicTearDownForExamples'.
	self should: [example runTearDown] raise: Notification.