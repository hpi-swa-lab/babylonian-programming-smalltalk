tests
testShowsNoSwimlanesWhenJustOpened

	self assert: 1 equals: printbugger submorphs size.
	self assert: nil equals: (printbugger findDeeplyA: BPSwimlane).
	self deny: nil equals: (printbugger findDeeplyA: PluggableButtonMorphPlus)
	
	
	