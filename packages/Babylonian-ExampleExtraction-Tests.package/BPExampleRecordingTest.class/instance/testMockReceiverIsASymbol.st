tests-mocking-leaf
testMockReceiverIsASymbol
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := #something.
	
	self
		recordMethod: #asSymbol
		inClass: Symbol
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver isSymbol.
	self assert: mockReceiver equals: receiver.