tests
testTest
	
	self assert: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample)) buildTest) 
		equals:  ('testExample<n><t>(Thing new) doBla: 2 with: 42' expandMacros)