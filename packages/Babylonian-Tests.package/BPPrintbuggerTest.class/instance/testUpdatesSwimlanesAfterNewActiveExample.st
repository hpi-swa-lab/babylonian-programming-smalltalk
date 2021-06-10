tests
testUpdatesSwimlanesAfterNewActiveExample
	
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	example1 isActive: false.
	self assert: (printbugger canvasMorph submorphs size) equals: 1.
	example1 isActive: true.
	self assert: (printbugger canvasMorph submorphs size) equals: 2.