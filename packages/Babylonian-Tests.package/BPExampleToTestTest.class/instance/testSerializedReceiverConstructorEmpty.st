tests
testSerializedReceiverConstructorEmpty
	
	self assert: 'BPTestExamplesClass new' equals: (self withFirstMethodExample serializedReceiverConstructor).