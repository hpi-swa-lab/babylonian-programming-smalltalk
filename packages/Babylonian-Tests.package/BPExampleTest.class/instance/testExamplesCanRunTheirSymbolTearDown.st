tests - running
testExamplesCanRunTheirSymbolTearDown
	
	self createExamples do: [:example |		
		example tearDownScript: '#basicTearDownForExamples'.
		self should: [example runTearDownWith: example prepareRunState] raise: Notification].