tests-minimizing
testMiniReceiverVariableUsedOnlyByUsingGetterAndMinimized
	
	| receiver miniReceiver |
	
	self assert: self recordings isEmpty.
	
	receiver := BPExampleMiningTestClass default.
	
	self
		recordMethod: #onlyGetNumber
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver myNumber equals: receiver defaultNumber.
	self assert: miniReceiver myCollection equals: nil.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject equals: nil.