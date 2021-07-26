tests-mocking-collections
runForNonArrayCollection: aCollectionClass
	
	| receiver parameters mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := aCollectionClass new
		add: 1;
		add: 2;
		yourself.
	parameters := {3}.
	
	self
		recordMethod: #add:
		inClass: aCollectionClass
		forInstancesAndParameters: {receiver -> parameters} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver isCollection.
	self assert: (mockReceiver isKindOf: aCollectionClass).
	self assert: mockReceiver size equals: 2.