tests
testSwimlaneEmptyForNoProbes
	
	|swimlane|
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	swimlane := BPSwimlane newFor: example1.
	self assert: 0 equals: swimlane lineSubMorphs size.