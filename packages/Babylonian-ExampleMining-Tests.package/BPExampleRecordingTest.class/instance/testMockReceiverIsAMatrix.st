tests-mocking-collections
testMockReceiverIsAMatrix
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := (Matrix rows: 3 columns: 3 contents: #(
		 1 2 3
		 4 5 6
		 7 8 9
	)).
	
	self
		recordMethod: #anyOne
		inClass: Matrix
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver isCollection.
	self assert: (mockReceiver isKindOf: Matrix).
	self assert: mockReceiver equals: receiver.
	self assert: mockReceiver size equals: 9.