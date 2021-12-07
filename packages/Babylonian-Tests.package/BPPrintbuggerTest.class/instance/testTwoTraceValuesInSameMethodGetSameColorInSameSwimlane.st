tests
testTwoTraceValuesInSameMethodGetSameColorInSameSwimlane

	|swimlane colors|
	self initExample1WithMethodWithMultipleProbes.
	
	swimlane := printbugger firstSubmorph.
	colors := (swimlane allMorphs select: [:aSubmorph | 
		aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph firstSubmorph color]) asSet.
	
	self assert: 1 equals: colors size.
	