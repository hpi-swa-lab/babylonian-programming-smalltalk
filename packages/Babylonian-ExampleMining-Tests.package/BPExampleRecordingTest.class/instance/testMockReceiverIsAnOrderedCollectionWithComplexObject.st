tests-mocking-collections
testMockReceiverIsAnOrderedCollectionWithComplexObject
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables defaultWithComplexObjectInCollection.
	
	self
		recordMethod: #doSomethingWithComplexObjectInCollection
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver class equals: receiver class.
	self assert: mockReceiver myBoolean equals: nil.
	self assert: mockReceiver myObject equals: nil.
	self assert: mockReceiver myCollection size equals: 3.
	self assert: mockReceiver myCollection first class equals: BPClassWithInstanceVariables.
	self assert: mockReceiver myCollection first myNumber equals: receiver defaultNumber.
	self assert: mockReceiver myCollection first myBoolean equals: nil.
	self assert: mockReceiver myCollection first myObject equals: nil.
	self assert: mockReceiver myCollection first myCollection equals: nil.
	self assert: mockReceiver myCollection second class equals: BPClassWithInstanceVariables.
	self assert: mockReceiver myCollection second myNumber equals: nil.
	self assert: mockReceiver myCollection second myBoolean equals: nil.
	self assert: mockReceiver myCollection second myObject equals: nil.
	self assert: mockReceiver myCollection second myCollection equals: nil.
	self assert: mockReceiver myCollection third equals: #something.