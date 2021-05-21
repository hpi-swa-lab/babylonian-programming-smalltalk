adding examples
addTestCaseExampleButtonClicked
	
	self containsTestMethod
		ifTrue: [self addAsTestCaseExample]
		ifFalse: [self openSearchTool].