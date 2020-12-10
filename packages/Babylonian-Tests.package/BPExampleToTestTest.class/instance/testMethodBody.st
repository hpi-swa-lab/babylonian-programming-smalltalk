tests
testMethodBody
	
	self assert: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample)) buildMethod) 
		equals:  '(Thing new) doBla: 2 with: 42'