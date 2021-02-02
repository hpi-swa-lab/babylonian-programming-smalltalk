tests
testMethodTestDeserializerReturnsExpectedResultNumber
	
	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#testMethodTestExample)) deserialize.
	
	self assert: '15' equals: result expectedResult.