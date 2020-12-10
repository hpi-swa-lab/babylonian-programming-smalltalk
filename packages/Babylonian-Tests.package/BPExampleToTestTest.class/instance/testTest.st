tests
testTest
	
	self assert: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample)) buildTestForClass: BPExampleToMethodTest) 
		equals:  ('testExample<n><t>"Generated from an example, do not modify"<n><n><t>(Thing new) doBla: 2 with: 42' expandMacros)