tests
testBasicTestDeserializer
	
	| result |

	result := (BPMethodExampleTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testBasicTestExample)) deserialize.
	self assert: '(BPGeneratedTest for: 10)' equals: result receiverConstructor.
	self assert: (#(2 3) asOrderedCollection) equals: result argumentScripts. 