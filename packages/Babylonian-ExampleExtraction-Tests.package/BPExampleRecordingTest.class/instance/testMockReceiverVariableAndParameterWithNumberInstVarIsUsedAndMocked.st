tests-mocking
testMockReceiverVariableAndParameterWithNumberInstVarIsUsedAndMocked
	
	| receiver parameter mockReceiver mockParameter mockReceiverAndParameters |
	
	self assert: exampleExtractionTool recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables default.
	parameter := BPClassWithInstanceVariables defaultWithOtherNumber.
	
	self
		recordMethod: #doSomethingWithNumberAndNumberFrom:
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {parameter}} asDictionary.
	
	self assert: exampleExtractionTool recordings isEmpty not.
	
	mockReceiverAndParameters := self getMockedObjectsForFirstRecording.
	mockReceiver := mockReceiverAndParameters first.
	mockParameter := mockReceiverAndParameters second first.
	self assert: mockReceiver myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.
	self assert: mockParameter myNumber equals: parameter defaultOtherNumber.
	self assert: mockParameter myCollection equals: nil.
	self assert: mockParameter myBoolean equals: nil.
	self assert: mockParameter myObject equals: nil.