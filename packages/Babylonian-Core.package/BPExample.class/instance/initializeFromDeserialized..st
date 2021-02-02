initialize-release
initializeFromDeserialized: aBPExample
	
	
	self 
		testRef: aBPExample method;
		exampleName: aBPExample exampleName.
		
	aBPExample setUpScript ifNotNil: [self setUpScript: aBPExample setUpScript].
	aBPExample tearDownScript ifNotNil: [self tearDownScript: aBPExample tearDownScript].
	aBPExample expectedResult ifNotNil: [self expectedResult: aBPExample expectedResult].