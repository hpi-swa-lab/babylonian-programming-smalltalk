tests-recording
testRecordingIsEmpty


	self assert: self recordings isEmpty.

	self
		recordMethod: #doSomething
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: Dictionary new.

	self assert: self recordings isEmpty