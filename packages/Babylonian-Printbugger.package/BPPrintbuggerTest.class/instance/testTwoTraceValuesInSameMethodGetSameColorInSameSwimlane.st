tests
testTwoTraceValuesInSameMethodGetSameColorInSameSwimlane

	|swimlane colors|
	self initExample1WithMethodWithMultipleProbes.
	printbugger updateFrom: {example1}.
	
	swimlane := printbugger findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane.
	colors := (swimlane allMorphs select: [:aSubmorph | 
		aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph firstSubmorph color]) asSet.
	
	self assert: 1 equals: colors size.
	