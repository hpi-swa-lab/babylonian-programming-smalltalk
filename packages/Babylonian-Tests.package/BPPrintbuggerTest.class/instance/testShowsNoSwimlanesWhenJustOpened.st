tests
testShowsNoSwimlanesWhenJustOpened

	self assert: 1 equals: printbugger examples size.
	self assert: 'none' equals: printbugger examples first uniqueIdentifier.
	self assert: nil equals: (printbugger findDeeplyA: BPSwimlane).
	
	
	