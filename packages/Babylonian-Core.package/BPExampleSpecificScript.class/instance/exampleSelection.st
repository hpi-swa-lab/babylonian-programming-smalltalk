accessing
exampleSelection
	
	^ self exampleName = self class allExamplesName 
		ifTrue: [self class allExamplesName]
		ifFalse: [SystemNavigation default allExamples 
			detect: [:example | example uniqueIdentifier = self exampleName]
			ifNone: [self class allExamplesName]]