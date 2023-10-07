tests
testExamplesKnowTheirTimeout

	self assert: ((method bpExamples collect: [:example | example timeout]) includes: 5000).