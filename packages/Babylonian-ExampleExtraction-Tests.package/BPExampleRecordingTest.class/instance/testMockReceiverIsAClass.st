tests-mocking-leaf
testMockReceiverIsAClass
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables.
	
	self
		recordMethod: #doSomethingClassSide
		inClass: BPClassWithInstanceVariables class
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: (mockReceiver isKindOf: Class).
	self assert: mockReceiver printString equals: receiver printString.