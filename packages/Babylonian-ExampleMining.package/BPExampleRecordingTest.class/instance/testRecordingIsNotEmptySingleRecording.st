tests-recording
testRecordingIsNotEmptySingleRecording

	| recordedObject |
	self assert: self recordings isEmpty.
	recordedObject := BPExampleMiningTestClass new.
	self
		recordMethod: #doSomething
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: {recordedObject -> {}} asDictionary.

	self assert: self recordings isEmpty not.
	self assert: self recordings size equals: 1.
	self assert: self recordings first first class equals: recordedObject class.
	self assert: self recordings first second isEmpty