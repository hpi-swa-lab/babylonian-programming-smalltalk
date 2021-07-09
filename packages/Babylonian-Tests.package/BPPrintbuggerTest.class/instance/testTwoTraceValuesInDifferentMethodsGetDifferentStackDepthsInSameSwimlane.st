tests
testTwoTraceValuesInDifferentMethodsGetDifferentStackDepthsInSameSwimlane
	
	|swimlane stackDepths|
	self initExample1WithMethodWithExampleCallingOnlyProbedMethod.
	
	swimlane := printbugger canvasMorph firstSubmorph.
	stackDepths := swimlane allMorphs select: [:aSubmorph | aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph width].
	
	self assert: 2 equals: stackDepths asSet size.
	self assert: stackDepths first < stackDepths second.