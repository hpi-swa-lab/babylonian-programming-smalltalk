tests
testSwimlaneDisplaysTraceValuesForTwoAssertionsChronologicallySorted

	|swimlane traceValues traceIndexes traceIndex expected green orange|
	self initExample1WithMethodWithMultipleAssertions.
	probelog updateFrom: {example1}.
	
	swimlane := BPSwimlane newFor: example1.
	traceValues := swimlane allMorphs
		select: [:aSubmorph | aSubmorph isKindOf: ImageMorph] 
		thenCollect: [:anImageMorph | anImageMorph form bits].
	
	green := (BPSwimlaneLineMorph new scaleIcon: ToolIcons testGreen by: BPSwimlane assertionIconScale) bits.
	orange := (BPSwimlaneLineMorph new scaleIcon: ToolIcons testOrange by: BPSwimlane assertionIconScale) bits.
	expected := {green. orange. orange. green. green. green.}.
	self assert: (traceValues includesAllOf: expected).
	
	traceIndexes := OrderedCollection new.
	traceIndex := 0.
	1 to: expected size do: [:value | 
		traceIndex := traceValues indexOf: value startingAt: traceIndex + 1.
		traceIndexes add: traceIndex.
		].
	self assert: traceIndexes isSorted.
		