tests
testMethodTestDeserializerReturnsExpectedResultString

	| result |

	result := (BPMethodTestDeserializer 
		from: (BPGeneratedTest>>#testMethodTestExpectedString)) deserialize.
	
	self assert: '''Hello''' equals: result expectedResult.