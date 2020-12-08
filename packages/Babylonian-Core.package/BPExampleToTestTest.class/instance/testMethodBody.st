tests
testMethodBody
	
	self assert: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample)) buildMethodCall) 
		equals:  '(Thing new) doBla: 2 with: 42'