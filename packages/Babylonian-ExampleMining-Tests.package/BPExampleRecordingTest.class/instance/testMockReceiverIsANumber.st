tests-mocking-leaf
testMockReceiverIsANumber
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := 5.
	
	self
		recordMethod: #asInteger
		inClass: Integer
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver isNumber.
	self assert: mockReceiver isInteger.
	self assert: mockReceiver equals: receiver.