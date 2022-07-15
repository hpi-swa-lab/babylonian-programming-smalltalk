tests
testTwoTraceValuesInSameMethodGetSameColorInMultipleSwimlanes

	|swimlane1 swimlane2 colors1 colors2|
	self initExamplesWithMethodWithMultipleProbes.
	printbugger updateFrom: {example1. example2.}.
	
	swimlane1 := printbugger firstSubmorph findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane1.
	swimlane2 := printbugger submorphs second findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane2.
	colors1 := (swimlane1 allMorphs select: [:aSubmorph | aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph color]) asSet.
	colors2 := (swimlane2 allMorphs select: [:aSubmorph |aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph color]) asSet.
	
	self assert: colors1 equals: colors2.