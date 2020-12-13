tests
testMethodBody
	
	self assert: '(Thing new) doBla: 2 with: 42'
		equals: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample)) buildMethod).