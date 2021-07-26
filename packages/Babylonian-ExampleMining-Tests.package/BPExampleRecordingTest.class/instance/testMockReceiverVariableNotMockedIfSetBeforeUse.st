tests-mocking
testMockReceiverVariableNotMockedIfSetBeforeUse
	
	| mockReceiver |
	
	self assert: self recordings isEmpty.
	
	self
		recordMethod: #setNumberBeforeDoingSomethingWithIt
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {BPClassWithInstanceVariables default -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver myNumber equals: nil.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.