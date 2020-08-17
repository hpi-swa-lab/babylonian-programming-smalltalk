accessing
exampleName

	^ self otherInformation at: #for ifAbsent: [self class allExamplesName]