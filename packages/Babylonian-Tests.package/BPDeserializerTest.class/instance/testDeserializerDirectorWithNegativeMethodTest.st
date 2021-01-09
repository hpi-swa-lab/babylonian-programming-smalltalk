tests
testDeserializerDirectorWithNegativeMethodTest

	self assert: Error equals: (
		(BPDeserializer deserialize: BPGeneratedTest>>#testNegativeMethodTestExample for: BPGeneratedTest>>#add:to:)
		expectedResult).