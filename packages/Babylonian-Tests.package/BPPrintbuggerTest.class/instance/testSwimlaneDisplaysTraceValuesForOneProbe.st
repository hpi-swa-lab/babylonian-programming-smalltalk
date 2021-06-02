tests
testSwimlaneDisplaysTraceValuesForOneProbe
	
	| swimlane traceValues|
	self initExample1WithMethodWithMultipleProbes.
	swimlane := printbugger canvasMorph firstSubmorph.
	self assert: ((swimlane) isKindOf: BPSwimlane).
	self assert: (swimlane submorphs size) equals: 7. "+1 for title"
	traceValues := swimlane allMorphs select: [:aSubmorph | aSubmorph isKindOf: StringMorph] thenCollect: [:aStringMorph | aStringMorph contents].
	self assert: (traceValues includesAllOf: {'1'. '2'. '2'. '4'. '3'. '6'.}).
	