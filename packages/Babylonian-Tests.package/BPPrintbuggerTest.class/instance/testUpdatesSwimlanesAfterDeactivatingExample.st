tests
testUpdatesSwimlanesAfterDeactivatingExample
	
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	self assert: printbugger canvasMorph submorphs size equals: 2.
	example1 isActive: false.
	self assert: printbugger canvasMorph submorphs size equals: 1.
	