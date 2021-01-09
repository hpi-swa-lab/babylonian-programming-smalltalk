tests
testDeserializerDirectorWithMethodTest

	self assert: 15 equals: (
		(BPDeserializer deserialize: BPGeneratedTest>>#testMethodTestExample for: BPGeneratedTest>>#add:to:)
		expectedResult).