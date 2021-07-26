tests-mocking-collections
testMockReceiverIsADictionary
	
	| receiver parameters mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := Dictionary new
		add: 1->2;
		add: 2->3;
		yourself.
	parameters := {3->4}.
	
	self
		recordMethod: #add:
		inClass: Dictionary
		forInstancesAndParameters: {receiver -> parameters} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver isCollection.
	self assert: (mockReceiver isKindOf: Dictionary).
	self assert: mockReceiver size equals: 2.