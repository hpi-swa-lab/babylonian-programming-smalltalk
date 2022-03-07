tests
testSwimlaneDisplaysTraceValuesForOneAssertion

	| swimlane traceValues green orange |
	self initExample1WithMethodWithMultipleAssertions.
	printbugger updateFrom: {example1}.
	
	swimlane := printbugger findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane.
	self assert: 6 equals: (swimlane lineSubMorphs size).
	traceValues := swimlane allMorphs 
		select: [:aSubmorph | aSubmorph isKindOf: ImageMorph] 
		thenCollect: [:anImageMorph | anImageMorph form bits].
	
	green := (BPSwimlaneLineMorph new scaleIcon: ToolIcons testGreen by: BPSwimlane assertionIconScale) bits.
	orange := (BPSwimlaneLineMorph new scaleIcon: ToolIcons testOrange by: BPSwimlane assertionIconScale) bits.
	self assert: (traceValues includesAllOf: {green. orange. orange. green. green. green.}).
	