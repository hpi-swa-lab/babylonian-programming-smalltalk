tests
testNegativeMethodTestDeserializerReturnsReceiver
	
	| result |

	result := (BPNegativeMethodTestDeserializer 
		for: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: 'BPGeneratedTest for: 10' equals: result receiverConstructor.