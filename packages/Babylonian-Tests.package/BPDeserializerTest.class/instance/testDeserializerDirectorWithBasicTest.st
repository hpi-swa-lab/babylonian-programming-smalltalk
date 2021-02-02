tests
testDeserializerDirectorWithBasicTest

	self assert: nil equals: (
		(BPDeserializer deserialize: BPGeneratedTest>>#testBasicTestExample)
		expectedResult).