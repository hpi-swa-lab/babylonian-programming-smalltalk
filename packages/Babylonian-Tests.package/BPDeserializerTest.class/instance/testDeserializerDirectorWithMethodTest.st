tests
testDeserializerDirectorWithMethodTest

	self assert: '15' equals: (
		(BPDeserializer deserialize: BPGeneratedTest>>#testMethodTestExample)
		expectedResult).