tests-mocking
testMockReceiverIsAMorph
	
	| receiver mockReceiver |
	self assert: self recordings isEmpty.
	
	receiver := Morph new.
	
	self
		recordMethod: #x
		inClass: Morph
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockReceiver := self getMockedObjectsForFirstRecording first.
	self assert: mockReceiver isMorph.
	mockReceiver inspect.
	self flag: #todo. "test more once more stuff works"
	"self assert: mockReceiver x equals: receiver x."