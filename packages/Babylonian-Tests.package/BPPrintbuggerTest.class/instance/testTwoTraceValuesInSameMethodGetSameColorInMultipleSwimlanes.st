tests
testTwoTraceValuesInSameMethodGetSameColorInMultipleSwimlanes
	
	|swimlane1 swimlane2 colors1 colors2|
	self initExamplesWithMethodWithMultipleProbes.
	
	swimlane1 := printbugger canvasMorph firstSubmorph.
	swimlane2 := printbugger canvasMorph submorphs second.
	colors1 := (swimlane1 allMorphs select: [:aSubmorph | aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph color]) asSet.
	colors2 := (swimlane2 allMorphs select: [:aSubmorph |aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph color]) asSet.
	
	self assert: colors1 equals: colors2.