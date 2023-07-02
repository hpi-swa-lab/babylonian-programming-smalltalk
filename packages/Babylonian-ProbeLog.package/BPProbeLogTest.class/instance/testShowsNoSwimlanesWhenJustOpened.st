tests
testShowsNoSwimlanesWhenJustOpened

	self assert: 1 equals: probelog submorphs size.
	self assert: nil equals: (probelog findDeeplyA: BPSwimlane).
	self deny: nil equals: (probelog findDeeplyA: PluggableButtonMorphPlus)
	
	
	