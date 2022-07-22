tests - running
testExamplesCanRunTheirSymbolTearDown
	
	self createExamples do: [:example |		
		example tearDownScript: '#basicTearDownForExamples'.
		self should: [example runTearDown] raise: Notification].