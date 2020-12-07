tests
testTest
	
	self assert: ((BPExampleToMethodTest forExample: (BPExampleToTestTest createMockExample)) buildTest) 
		equals:  ('testExample<n><t>self assert: ((Thing new) doBla: 2 with: 42) equals: 3' expandMacros)