tests-recording
testRecordingIsNotEmptyWithParameter

	| recordedObject parameters |
	self assert: self recordings isEmpty.
	recordedObject := BPExampleMiningTestClass new.
	parameters := {42}.
	self
		recordMethod: #doSomethingWith:
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: (Dictionary newFromPairs: {recordedObject. parameters}).

	self assert: self recordings isEmpty not.
	self assert: self recordings size equals: 1.
	self assert: self recordings first first class equals: recordedObject class.
	self assert: self recordings first second first equals: parameters first