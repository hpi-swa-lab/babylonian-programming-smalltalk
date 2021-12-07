tests
testUpdatesSwimlanesAfterDeactivatingExample

	self initExamplesWithoutAnnotations.
	self assert: 2 equals: printbugger submorphs size.
	example1 isActive: false.
	self assert: 1 equals: printbugger submorphs size.
	