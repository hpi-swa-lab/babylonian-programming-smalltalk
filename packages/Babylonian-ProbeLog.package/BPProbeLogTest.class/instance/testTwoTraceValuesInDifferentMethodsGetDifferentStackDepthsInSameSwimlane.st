tests
testTwoTraceValuesInDifferentMethodsGetDifferentStackDepthsInSameSwimlane

	| swimlane stackDepths | 
	self initExample1WithMethodWithExampleCallingOnlyProbedMethod.
	probelog updateFrom: {example1}.
	
	swimlane := probelog firstSubmorph findDeeplyA: BPSwimlane.
	self deny: nil equals: swimlane.
	stackDepths := swimlane allMorphs 
		select: [:aSubmorph | aSubmorph knownName = 'stackBar'] 
		thenCollect: [:aBarMorph | aBarMorph fullBounds width].
	 
	self assert: 2 equals: stackDepths asSet size.
	