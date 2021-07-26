tests-mocking-leaf
testMockReceiverIsAPoint
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := 1@2.
	
	self
		recordMethod: #area
		inClass: Point
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver isPoint.
	self assert: mockReceiver equals: receiver.