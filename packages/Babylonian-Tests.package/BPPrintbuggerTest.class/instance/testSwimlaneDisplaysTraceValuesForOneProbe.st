tests
testSwimlaneDisplaysTraceValuesForOneProbe
	
	| swimlane traceValues|
	self initExample1WithMethodWithMultipleProbes.
	swimlane := printbugger canvasMorph firstSubmorph.
	self assert: (swimlane isKindOf: BPSwimlane).
	self assert: 6 equals: (swimlane lineSubMorphs size).
	traceValues := swimlane allMorphs select: [:aSubmorph | aSubmorph isKindOf: StringMorph] thenCollect: [:aStringMorph | aStringMorph contents].
	self assert: (traceValues includesAllOf: {'1'. '2'. '2'. '4'. '3'. '6'.}).
	