tests
testDeserializerDirectorWithBasicTest

	self assert: nil equals: (
		(BPDeserializer deserialize: BPGeneratedTest>>#testBasicTestExample for: BPGeneratedTest>>#add:to:)
		expectedResult).