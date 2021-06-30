tests
testTwoTraceValuesInSameMethodGetSameColorInSameSwimlane
	
	|swimlane colors|
	self initExample1WithMethodWithMultipleProbes.
	
	swimlane := printbugger canvasMorph firstSubmorph.
	colors := swimlane allMorphs select: [:aSubmorph | aSubmorph name == '#stackBar'] thenCollect: [:aBarMorph | aBarMorph color].
	
	self assert: 1 equals: colors size.
	