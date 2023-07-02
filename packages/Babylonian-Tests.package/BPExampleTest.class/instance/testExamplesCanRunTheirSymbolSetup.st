tests - running
testExamplesCanRunTheirSymbolSetup
	
	self createExamples do: [:example |		
		example setUpScript: '#basicSetUpForExamples'.
		self should: [example runSetUpWith: example prepareRunState] raise: Notification].