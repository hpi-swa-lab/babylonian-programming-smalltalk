tests
testDeserializerDirectorWithNegativeMethodTest
	
	self assert: 'Error' equals: (
		(BPDeserializer deserialize: BPGeneratedTest>>#testNegativeMethodTestExample)
		expectedResult).