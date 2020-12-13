tests
testTest
	
	self assert: ('testExample<n><t>"Generated from an example, do not modify"<n><n><t>(Thing new) doBla: 2 with: 42' expandMacros)
		equals: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample)) buildTestForClass: BPExampleToMethodTest).