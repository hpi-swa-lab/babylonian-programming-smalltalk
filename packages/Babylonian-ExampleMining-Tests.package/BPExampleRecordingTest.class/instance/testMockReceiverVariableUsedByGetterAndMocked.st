tests-mocking
testMockReceiverVariableUsedByGetterAndMocked
	
	| receiver mockReceiver |
	
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables default.
	
	self
		recordMethod: #myNumber
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.