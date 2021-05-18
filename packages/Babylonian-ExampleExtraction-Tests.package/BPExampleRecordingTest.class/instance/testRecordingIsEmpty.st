tests-recording
testRecordingIsEmpty
	
	
	self assert: exampleExtractionTool recordings isEmpty.
	
	self
		recordMethod: #doSomething
		inClass: BPClassWithMethods
		forInstancesAndParameters: Dictionary new.
	
	self assert: self recordings isEmpty.