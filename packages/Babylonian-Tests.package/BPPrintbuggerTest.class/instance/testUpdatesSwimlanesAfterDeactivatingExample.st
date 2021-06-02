tests
testUpdatesSwimlanesAfterDeactivatingExample
	
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	self assert: (printbugger canvasMorph submorphs size) equals: 2.
	example1 isActive: false.
	example1 changed: #exampleIsActive with: self.
	self assert: (printbugger canvasMorph submorphs size) equals: 1.
	