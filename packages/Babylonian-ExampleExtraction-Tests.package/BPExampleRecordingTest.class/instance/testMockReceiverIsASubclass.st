tests-mocking
testMockReceiverIsASubclass
	
	| receiver mockReceiver |
	
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariablesSubclass default.
	
	self
		recordMethod: #subclassMethod
		inClass: BPClassWithInstanceVariablesSubclass
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.