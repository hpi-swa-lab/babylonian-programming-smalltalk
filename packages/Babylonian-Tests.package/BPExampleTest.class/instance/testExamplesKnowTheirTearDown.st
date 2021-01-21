tests
testExamplesKnowTheirTearDown
	
	self assert: ((method bpExamples collect: [:example | example tearDownScript]) includes: '#basicTearDownScript').