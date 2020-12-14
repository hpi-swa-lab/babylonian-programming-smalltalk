tests
testSymbolReceiverConstructors
	
	self assert: ('testExample<n><t>"Generated from an example, do not modify"<n><n><t>(TestObject newCustom) doBla: 2 with: ''42''' expandMacros)
		equals: ((BPExampleToTest forExample: (BPExampleToTestTest createMockExample receiverConstructor: #newCustom)) buildTestForClass: BPExampleToMethodTest).