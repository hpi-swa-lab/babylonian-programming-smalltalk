tests - running
testExamplesCanRunTheirSetup
	
	self createExamples do: [:example |
		example setUpScript: 'Notification signal'.
		self should: [example runSetUpWith: example prepareRunState] raise: Notification].