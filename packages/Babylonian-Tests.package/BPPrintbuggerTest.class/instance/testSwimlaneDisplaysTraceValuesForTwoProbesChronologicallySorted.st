tests
testSwimlaneDisplaysTraceValuesForTwoProbesChronologicallySorted
	
	|swimlane traceValues traceIndexes|
	self initExample1WithMethodWithMultipleProbes.
	swimlane := BPSwimlane newFor: example1.
	traceValues := swimlane allMorphs select: [:aSubmorph | aSubmorph isKindOf: StringMorph] thenCollect: [:aStringMorph | aStringMorph contents].
	self assert: (traceValues includesAllOf: {'1'. '2'. '2'. '4'. '3'. '6'.}).
	traceIndexes := {'1'. '2'. '2'. '4'. '3'. '6'.} collect: [:aTraceString | traceValues indexOf: aTraceString].
	self assert: traceIndexes isSorted.
		