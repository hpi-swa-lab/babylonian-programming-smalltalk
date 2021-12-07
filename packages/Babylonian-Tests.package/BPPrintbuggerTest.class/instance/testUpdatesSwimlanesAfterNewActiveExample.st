tests
testUpdatesSwimlanesAfterNewActiveExample

	self initExamplesWithoutAnnotations.
	example1 isActive: false.
	self assert: 1 equals: printbugger submorphs size.
	example1 isActive: true.
	self assert: 2 equals: printbugger submorphs size.