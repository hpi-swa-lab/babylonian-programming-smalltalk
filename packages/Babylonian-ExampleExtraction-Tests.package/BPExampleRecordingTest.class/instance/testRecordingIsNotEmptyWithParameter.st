tests-recording
testRecordingIsNotEmptyWithParameter
	
	| recordedObject parameters |
	self assert: self recordings isEmpty.
	recordedObject := BPClassWithMethods new.
	parameters := {42}.
	self
		recordMethod: #doSomethingWith:
		inClass: BPClassWithMethods
		forInstancesAndParameters: {recordedObject -> parameters} asDictionary.
	
	self assert: self recordings isEmpty not.
	self assert: self recordings size equals: 1.
	self assert: self recordings first first class equals: recordedObject class. "TODO better"
	self assert: self recordings first second first equals: parameters first.