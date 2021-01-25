tests
testNegativeMethodTestDeserializerReturnsErrorType

	| result |

	result := (BPNegativeMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: 'Error' equals: result expectedResult.