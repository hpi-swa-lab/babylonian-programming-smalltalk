tests
testExamplesKnowTheirName

	self assert: ((method bpExamples collect: [:example | example exampleName]) includes: 'basic')