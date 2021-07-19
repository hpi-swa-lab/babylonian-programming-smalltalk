tests-mocking-collections
testMockReceiverIsAnByteArray
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := #[1 2 3].
	
	self
		recordMethod: #asByteArray
		inClass: ByteArray
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver isCollection.
	self assert: (mockReceiver isKindOf: ByteArray).
	self assert: mockReceiver equals: receiver.
	self assert: mockReceiver size equals: 3.