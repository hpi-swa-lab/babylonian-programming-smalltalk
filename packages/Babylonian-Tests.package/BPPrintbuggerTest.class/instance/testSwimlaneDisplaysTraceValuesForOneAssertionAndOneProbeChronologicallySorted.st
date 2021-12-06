tests
testSwimlaneDisplaysTraceValuesForOneAssertionAndOneProbeChronologicallySorted

	|swimlane traceValues traceIndexes traceIndex expected green orange|

	self initExample1WithMethodWithSingleAssertionAndSingleProbe.
	swimlane := BPSwimlane newFor: example1.
	traceValues := swimlane allMorphs
		select: [:aSubmorph | (aSubmorph isKindOf: ImageMorph) or: (aSubmorph isKindOf: StringMorph)] 
		thenCollect: [:aSubmorph | (aSubmorph isKindOf: ImageMorph) ifTrue: [aSubmorph form bits] ifFalse: [aSubmorph contents]].
	
	green := (swimlane scaleIcon: ToolIcons testGreen by: BPSwimlane assertionIconScale) bits.
	orange := (swimlane scaleIcon: ToolIcons testOrange by: BPSwimlane assertionIconScale) bits.
	expected := {orange. '1'. green. '2'. orange. '3'}.
	self assert: (traceValues includesAllOf: expected).
	
	traceIndexes := OrderedCollection new.
	traceIndex := 0.
	1 to: expected size do: [:value | 
		traceIndex := traceValues indexOf: value startingAt: traceIndex + 1.
		traceIndexes add: traceIndex.
		].
	self assert: traceIndexes isSorted.