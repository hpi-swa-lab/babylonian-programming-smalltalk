as yet unclassified
testNegativeMethodTestDeserializer

	| result |

	result := (BPNegativeMethodTestDeserializer 
		for: (BPGeneratedTest>>#add:to:) 
		from: (BPGeneratedTest>>#testNegativeMethodTestExample)) deserialize.
	
	self assert: 'Error' equals: result expectedResult.
	self assert: '(BPGeneratedTest for: 10)' equals: result receiverConstructor.
	self assert: (#(-1 3) asOrderedCollection) equals: result argumentScripts. 