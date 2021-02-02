tests
testNegativeMethodTestDeserializerReturnsParameters

	| result |

	result := (BPNegativeMethodTestDeserializer 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: (#('-1' '3')) equals: result argumentScripts. 