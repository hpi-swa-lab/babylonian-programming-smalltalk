tests
testNegativeMethodTestDeserializerReturnsErrorType

	| result |

	result := (BPNegativeMethodTestDeserializer 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: 'Error' equals: result expectedResult.