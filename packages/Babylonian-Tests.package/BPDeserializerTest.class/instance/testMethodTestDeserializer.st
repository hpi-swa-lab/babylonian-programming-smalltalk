as yet unclassified
testMethodTestDeserializer

	| result |

	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testMethodTestExample)) deserialize.
	
	self assert: 15 equals: result expectedResult.
	self assert: '(BPGeneratedTest for: 10)' equals: result receiverConstructor.
	self assert: (#(2 3) asOrderedCollection) equals: result argumentScripts. 