tests
testSwimlaneEmptyForNoProbes

	|swimlane|
	self initExamplesWithoutAnnotations.
	swimlane := BPSwimlane newFor: example1.
	self assert: 0 equals: swimlane lineSubMorphs size.