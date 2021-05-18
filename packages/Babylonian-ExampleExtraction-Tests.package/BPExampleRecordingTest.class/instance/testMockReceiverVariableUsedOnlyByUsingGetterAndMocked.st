tests-mocking
testMockReceiverVariableUsedOnlyByUsingGetterAndMocked
	
	| receiver mockReceiver |
	
	self assert: exampleExtractionTool recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables default.
	
	self
		recordMethod: #onlyGetNumber
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: exampleExtractionTool recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	"self assert: mockReceiver myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil."