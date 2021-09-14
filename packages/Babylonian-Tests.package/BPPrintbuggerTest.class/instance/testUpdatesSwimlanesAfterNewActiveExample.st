tests
testUpdatesSwimlanesAfterNewActiveExample
	
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	example1 isActive: false.
	self assert: 1 equals: printbugger canvasMorph submorphs size.
	example1 isActive: true.
	self assert: 2 equals: printbugger canvasMorph submorphs size.