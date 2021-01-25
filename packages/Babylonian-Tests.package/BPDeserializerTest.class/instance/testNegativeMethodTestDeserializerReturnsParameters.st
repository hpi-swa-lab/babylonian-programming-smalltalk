tests
testNegativeMethodTestDeserializerReturnsParameters

	| result |

	result := (BPNegativeMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: (#('-1' '3')) equals: result argumentScripts. 