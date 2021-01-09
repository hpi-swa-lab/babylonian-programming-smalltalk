tests
testNegativeMethodTestDeserializerReturnsReceiver

	| result |

	result := (BPNegativeMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: '(BPGeneratedTest for: 10)' equals: result receiverConstructor.