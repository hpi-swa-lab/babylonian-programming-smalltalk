accessing
example
	
	^ SystemNavigation default allExamples 
		detect: [:example | example uniqueIdentifier = self exampleName]
		ifNone: [self class allExamplesName]