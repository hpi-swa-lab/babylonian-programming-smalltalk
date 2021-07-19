tests-mocking
testMockReceiverVariableUsesGetterOfOtherObject
	
	| receiver mockReceiver |
	
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables defaultWithAnotherDefaultAsMyObject.
	
	self
		recordMethod: #doSomethingWithTheMyObjectMyNumberGetter
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver myNumber equals: nil.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject class equals: BPClassWithInstanceVariables.
	self assert: mockReceiver myObject myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myObject myCollection equals: nil.
	self assert: mockReceiver myObject myBoolean equals: nil.
	self assert: mockReceiver myObject myObject equals: nil.