tests
testExampleInstanceMethodReferenceKnowsTheName
	
	self assert: (SystemNavigation default allExampleInstanceMethods anySatisfy: [:m | m exampleInstanceName = 'blue star']).