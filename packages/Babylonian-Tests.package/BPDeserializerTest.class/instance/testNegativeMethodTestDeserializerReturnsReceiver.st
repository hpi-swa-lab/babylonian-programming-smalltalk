tests
testNegativeMethodTestDeserializerReturnsReceiver

	| result |

	result := (BPNegativeMethodTestDeserializer 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: 'BPGeneratedTest for: 10' equals: result receiverConstructor.