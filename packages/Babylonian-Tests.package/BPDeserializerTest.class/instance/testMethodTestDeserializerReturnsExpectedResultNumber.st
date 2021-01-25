tests
testMethodTestDeserializerReturnsExpectedResultNumber

	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testMethodTestExample)) deserialize.
	
	self assert: '15' equals: result expectedResult.