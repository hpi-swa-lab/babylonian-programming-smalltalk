tests - running
testExamplesCanRunTheirSymbolSetup
	
	self createExamples do: [:example |		
		example setUpScript: '#basicSetUpForExamples'.
		self should: [example runSetUp] raise: Notification].