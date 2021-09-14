tests
testTwoTraceValuesInSameMethodGetSameColorInSameSwimlane
	
	|swimlane colors|
	self initExample1WithMethodWithMultipleProbes.
	
	swimlane := printbugger canvasMorph firstSubmorph.
	colors := (swimlane allMorphs select: [:aSubmorph | aSubmorph knownName = 'stackBar'] thenCollect: [:aBarMorph | aBarMorph color]) asSet.
	
	self assert: 1 equals: colors size.
	