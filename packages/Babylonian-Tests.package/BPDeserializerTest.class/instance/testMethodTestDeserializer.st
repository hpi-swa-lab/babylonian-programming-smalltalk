tests
testMethodTestDeserializer
	
	| result |
	
	result := (BPMethodTestDeserializer 
		for: (BPGeneratedTests>>#add:to:) 
		from: (BPGeneratedTests>>#testMethodTestExample)) deserialize.
	self fail. "TODO: Merge with expectedValue branch and uncomment assertion below"
	"self assert: '12' equals: result expectedValue."
	self assert: '(BPGeneratedTests for: 10)' equals: result receiverConstructor.
	self assert: (#(2 3) asOrderedCollection) equals: result argumentScripts.