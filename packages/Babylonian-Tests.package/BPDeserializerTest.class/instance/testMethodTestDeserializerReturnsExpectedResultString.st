tests
testMethodTestDeserializerReturnsExpectedResultString

	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testMethodTestExpectedString)) deserialize.
	
	self assert: '''Hello''' equals: result expectedResult.