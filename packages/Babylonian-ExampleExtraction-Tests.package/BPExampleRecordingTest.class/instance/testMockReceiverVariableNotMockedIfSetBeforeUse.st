tests-mocking
testMockReceiverVariableNotMockedIfSetBeforeUse
	
	| mockReceiver |
	
	self assert: exampleExtractionTool recordings isEmpty.
	
	self
		recordMethod: #setNumberBeforeDoingSomethingWithIt
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {BPClassWithInstanceVariables default -> {}} asDictionary.
	
	self assert: exampleExtractionTool recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver myNumber equals: nil.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.