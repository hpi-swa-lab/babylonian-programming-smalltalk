tests
testTwoTraceValuesInDifferentMethodsGetDifferentColorsInSameSwimlane
	
	|swimlane colors|
	self initExample1WithMethodWithExampleCallingOnlyProbedMethod.
	
	swimlane := printbugger canvasMorph firstSubmorph.
	colors := (swimlane allMorphs select: [:aSubmorph | aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph color]) asSet.
	
	self assert: 2 equals: colors size.