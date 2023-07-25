tests-recording
testRecordingIsNotEmptyMultipleRecordings

	| usedInstancesAndEmptyParams |

	usedInstancesAndEmptyParams := Dictionary newFromPairs:
		{BPExampleMiningTestClass new. {}.
		BPExampleMiningTestClass new. {}}.

	self assert: self recordings isEmpty.

	self
		recordMethod: #doSomething
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: usedInstancesAndEmptyParams.

	self assert: self recordings isEmpty not.
	self assert: self recordings size equals: 2.
	self assert: self recordings first first class equals: usedInstancesAndEmptyParams keys first class. 
	self assert: self recordings second first class equals: usedInstancesAndEmptyParams keys second class.
	self assert: self recordings first second isEmpty.
	self assert: self recordings second second isEmpty