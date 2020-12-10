tests
testTest
	
	self assert: ((BPExampleToMethodTest forExample: (BPExampleToTestTest createMockExample)) buildTestForClass: BPExampleToMethodTest) 
		equals:  ('testExample<n><t>"Generated from an example, do not modify"<n><n><t>self assert: ((Thing new) doBla: 2 with: 42) equals: 3' expandMacros)