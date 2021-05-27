tests-mocking-leaf
testMockReceiverIsUndefined
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := nil.
	
	self
		recordMethod: #isNil
		inClass: UndefinedObject
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver equals: receiver.