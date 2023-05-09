tests
testSwimlaneDisplaysTraceValuesForOneProbe

	| swimlane traceValues|
	self initExample1WithMethodWithMultipleProbes.
	probelog updateFrom: {example1}.
	swimlane := probelog findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane.
	self assert: 6 equals: (swimlane lineSubMorphs size).
	traceValues := swimlane allMorphs select: [:aSubmorph | 
		aSubmorph isKindOf: StringMorph] thenCollect: [:aStringMorph | aStringMorph contents].
	self assert: (traceValues includesAllOf: {'1'. '2'. '2'. '4'. '3'. '6'.}).
	