tests
testMethodTestDeserializerReturnsExpectedResultString
	
	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#testMethodTestExpectedString)) deserialize.
	
	self assert: '''Hello''' equals: result expectedResult.