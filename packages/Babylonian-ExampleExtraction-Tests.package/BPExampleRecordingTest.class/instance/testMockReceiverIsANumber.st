tests-mocking
testMockReceiverIsANumber
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := 5.
	
	self
		recordMethod: #asInteger
		inClass: Integer
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver isNumber.
	self assert: mockReceiver isInteger.
	self assert: mockReceiver equals: receiver.