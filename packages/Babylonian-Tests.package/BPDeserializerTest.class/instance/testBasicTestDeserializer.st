tests
testBasicTestDeserializer
	
	| result |

	result := (BPMethodExampleTestDeserializer 
		for: (BPGeneratedTest>>#testBasicTestExample)) deserialize.
	self assert: 'BPGeneratedTest for: 10' equals: result receiverConstructor.
	self assert: (#('2' '3')) equals: result argumentScripts. 