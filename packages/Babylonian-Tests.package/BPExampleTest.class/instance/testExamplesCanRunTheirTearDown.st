tests - running
testExamplesCanRunTheirTearDown
	
	self createExamples do: [:example |		
		example tearDownScript: 'Notification signal'.
		self should: [example runTearDown] raise: Notification].