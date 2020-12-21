tests
testBasicTestDeserializer
	
	| result |
	
	result := (BPBasicTestDeserializer 
		for: (BPGeneratedTests>>#add:to:) 
		from: (BPGeneratedTests>>#testBasicTestExample)) deserialize.
	self assert: '(BPGeneratedTests for: 10)' equals: result receiverConstructor.
	self assert: (#(2 3) asOrderedCollection) equals: result argumentScripts.