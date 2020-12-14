tests
testTest
	
	self assert: ('testExample<n><t>"Generated from an example, do not modify"<n><n><t>self assert: ((Thing new) doBla: 2 with: ''42'') equals: (3)' expandMacros)
		equals: ((BPExampleToMethodTest forExample: (BPExampleToTestTest createMockExample)) buildTestForClass: BPExampleToMethodTest).