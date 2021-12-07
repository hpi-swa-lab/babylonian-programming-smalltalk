tests
testTwoTraceValuesInDifferentMethodsGetDifferentStackDepthsInSameSwimlane

	|swimlane stackDepths|
	self initExample1WithMethodWithExampleCallingOnlyProbedMethod.
	
	swimlane := printbugger firstSubmorph.
	stackDepths := swimlane allMorphs select: [:aSubmorph | 
		aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph fullBounds width].
	
	self assert: 2 equals: stackDepths asSet size.