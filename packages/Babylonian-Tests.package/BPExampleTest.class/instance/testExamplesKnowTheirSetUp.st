tests
testExamplesKnowTheirSetUp
	
	self assert: ((method bpExamples collect: [:example | example setUpScript]) includes: '#basicSetUpScript').