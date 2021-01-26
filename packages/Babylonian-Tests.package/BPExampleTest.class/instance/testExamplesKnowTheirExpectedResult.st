tests
testExamplesKnowTheirExpectedResult
	
	self 
		assert: '2'		
		equals: (method bpExamples detect: [:e | e exampleName = 'basic']) expectedResult
