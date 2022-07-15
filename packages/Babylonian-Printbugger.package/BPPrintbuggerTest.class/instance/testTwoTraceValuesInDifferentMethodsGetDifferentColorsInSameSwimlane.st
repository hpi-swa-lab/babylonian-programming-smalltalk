tests
testTwoTraceValuesInDifferentMethodsGetDifferentColorsInSameSwimlane

	|swimlane colors|
	self initExample1WithMethodWithExampleCallingOnlyProbedMethod.
	printbugger updateFrom: {example1}.
	
	swimlane := printbugger firstSubmorph findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane.
	colors := (swimlane allMorphs select: [:aSubmorph | 
		aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph firstSubmorph color]) asSet.
	
	self assert: 2 equals: colors size.