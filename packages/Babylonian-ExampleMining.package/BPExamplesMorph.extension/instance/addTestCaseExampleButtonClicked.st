*Babylonian-ExampleMining-Core
addTestCaseExampleButtonClicked

	self containsTestMethod
		ifTrue: [self addAsTestCaseExample]
		ifFalse: [self openSearchTool]