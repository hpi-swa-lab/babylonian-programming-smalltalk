tests
testTwoTraceValuesInDifferentMethodsGetDifferentColorsInMultipleSwimlanes

	|swimlane1 swimlane2 colors1 colors2|
	self initExample1WithMethodWithMultipleProbes.
	self initExample2WithSingleProbe.
	probelog updateFrom: {example1. example2.}.
	
	swimlane1 := probelog firstSubmorph findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane1.
	swimlane2 := probelog submorphs second findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane2.
	colors1 := (swimlane1 allMorphs select: [:aSubmorph | 
		aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph firstSubmorph color]) asSet.
	colors2 := (swimlane2 allMorphs select: [:aSubmorph | 
		aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph firstSubmorph color]) asSet.
	
	self assert: colors1 size equals: colors2 size.
	self assert: colors1 ~= colors2.