tests - running
testExamplesCanRunTheirTearDown
	
	self createExamples do: [:example |		
		example tearDownScript: 'Notification signal'.
		self should: [example runTearDownWith: example prepareRunState] raise: Notification].