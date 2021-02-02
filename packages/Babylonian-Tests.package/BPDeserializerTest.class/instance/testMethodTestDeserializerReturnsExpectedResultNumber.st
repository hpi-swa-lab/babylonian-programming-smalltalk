tests
testMethodTestDeserializerReturnsExpectedResultNumber

	| result |

	result := (BPMethodTestDeserializer 
		from: (BPGeneratedTest>>#testMethodTestExample)) deserialize.
	
	self assert: '15' equals: result expectedResult.