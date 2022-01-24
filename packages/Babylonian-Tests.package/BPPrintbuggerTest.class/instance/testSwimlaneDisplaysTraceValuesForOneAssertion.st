tests
testSwimlaneDisplaysTraceValuesForOneAssertion

	| swimlane traceValues green orange |
	self initExample1WithMethodWithMultipleAssertions.
	swimlane := printbugger firstSubmorph.
	self assert: (swimlane isKindOf: BPSwimlane).
	self assert: 6 equals: (swimlane lineSubMorphs size).
	traceValues := swimlane allMorphs 
		select: [:aSubmorph | aSubmorph isKindOf: ImageMorph] 
		thenCollect: [:anImageMorph | anImageMorph form bits].
	
	green := (swimlane scaleIcon: ToolIcons testGreen by: BPSwimlane assertionIconScale) bits.
	orange := (swimlane scaleIcon: ToolIcons testOrange by: BPSwimlane assertionIconScale) bits.
	self assert: (traceValues includesAllOf: {green. orange. orange. green. green. green.}).
	