tests-mocking-leaf
testMockReceiverIsACharacter
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := $a.
	
	self
		recordMethod: #asCharacter
		inClass: Character
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: mockReceiver isCharacter.
	self assert: mockReceiver equals: receiver.