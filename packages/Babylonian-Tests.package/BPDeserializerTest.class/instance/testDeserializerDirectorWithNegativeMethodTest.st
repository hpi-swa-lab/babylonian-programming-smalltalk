tests
testDeserializerDirectorWithNegativeMethodTest
	
	self assert: 'Error' equals: (
		(BPDeserializer deserializeTest: BPGeneratedTest>>#testNegativeMethodTestExample)
		expectedResult).