comparing
= anotherReference

	^ self class = anotherReference class 
		and: [self methodReference = anotherReference methodReference]
		and: [self exampleName = anotherReference exampleName]