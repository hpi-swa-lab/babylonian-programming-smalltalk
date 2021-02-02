tests
testMethodTestDeserializerReturnsExpectedResultArray

	| result |

	result := (BPMethodTestDeserializer 
		from: (BPGeneratedTest>>#testMethodTestExpectedArray)) deserialize.
	
	self assert: '#(2 ''323'')' equals: result expectedResult.