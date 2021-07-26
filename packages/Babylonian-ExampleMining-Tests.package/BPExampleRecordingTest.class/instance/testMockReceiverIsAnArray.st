tests-mocking-collections
testMockReceiverIsAnArray
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := {#something. 2}.
	
	self
		recordMethod: #asArray
		inClass: Array
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver isCollection.
	self assert: (mockReceiver isKindOf: Array).
	self assert: mockReceiver equals: receiver.
	self assert: mockReceiver size equals: 2.