tests
testDeserializerDirectorWithBasicTest
	
	self assert: nil equals: (
		(BPDeserializer deserializeTest: BPGeneratedTest>>#testBasicTestExample)
		expectedResult).