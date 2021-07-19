tests-mocking
testMockIsCompleteEnoughForPrintString
	
	| receiver mockReceiver |
	
	self assert: self recordings isEmpty.
	
	receiver := WebRequest new.

	self
		recordMethod: #initialize
		inClass: WebRequest
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver printString isString.