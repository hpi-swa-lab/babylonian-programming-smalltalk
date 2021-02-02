tests
testMethodTestDeserializerReturnsExpectedResultArray
	
	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#testMethodTestExpectedArray)) deserialize.
	
	self assert: '#(2 ''323'')' equals: result expectedResult.