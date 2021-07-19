tests-mocking-leaf
testMockReceiverIsAString
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := 'something'.
	
	self
		recordMethod: #asString
		inClass: String
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver isString.
	self assert: mockReceiver equals: receiver.