tests-recording
testRecordingIsNotEmptySingleRecording
	
	| recordedObject |
	self assert: self recordings isEmpty.
	recordedObject := BPClassWithMethods new.
	self
		recordMethod: #doSomething
		inClass: BPClassWithMethods
		forInstancesAndParameters: {recordedObject -> {}} asDictionary.

	self assert: self recordings isEmpty not.
	self assert: self recordings size equals: 1.
	self assert: self recordings first first class equals: recordedObject class. "TODO better"
	self assert: self recordings first second isEmpty.