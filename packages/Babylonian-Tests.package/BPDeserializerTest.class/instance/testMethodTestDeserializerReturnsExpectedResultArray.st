tests
testMethodTestDeserializerReturnsExpectedResultArray

	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testMethodTestExpectedArray)) deserialize.
	
	self assert: '#(2 ''323'')' equals: result expectedResult.