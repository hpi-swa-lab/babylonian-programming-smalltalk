tests-mocking
testMockReceiverVariableAndNumberParameterIsUsedAndMocked
	
	| receiver parameter mockReceiver mockParameter mockReceiverAndParameters |
	
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables default.
	parameter := 7.
	
	self
		recordMethod: #doSomethingWithNumberAndAnotherNumber:
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {parameter}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiverAndParameters := self getMinimizedObjectsForFirstRecording.
	mockReceiver := mockReceiverAndParameters first.
	mockParameter := mockReceiverAndParameters second first.
	self assert: mockReceiver myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myCollection equals: nil.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.
	self assert: mockParameter equals: parameter.