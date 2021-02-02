tests
testNegativeMethodTestDeserializerReturnsErrorType
	
	| result |

	result := (BPNegativeMethodTestDeserializer 
		for: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: 'Error' equals: result expectedResult.