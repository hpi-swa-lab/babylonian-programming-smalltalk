tests
testSwimlaneEmptyForNoProbes
	
	|swimlane|
	self initExamplesWitMethodAWithAssertionUsingExpressionResult.
	swimlane := BPSwimlane newFor: example1.
	self assert: swimlane submorphs size equals: 1.