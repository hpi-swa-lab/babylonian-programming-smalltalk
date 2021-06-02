tests
testUpdatesSwimlanesAfterNewActiveExample
	
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	example1 isActive: false.
	example1 changed: #exampleIsActive with: self.
	self assert: (printbugger canvasMorph submorphs size) equals: 1.
	example1 isActive: true.
	example1 changed: #exampleIsActive with: self.
	self assert: (printbugger canvasMorph submorphs size) equals: 2.