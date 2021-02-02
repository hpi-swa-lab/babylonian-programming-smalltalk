tests
testDeserializerDirectorWithMethodTest
	
	self assert: '15' equals: (
		(BPDeserializer deserializeTest: BPGeneratedTest>>#testMethodTestExample)
		expectedResult).