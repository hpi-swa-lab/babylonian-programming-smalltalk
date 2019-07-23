comparing
= anotherExample

	anotherExample class = self class ifFalse: [^ false].
	^ self method = anotherExample method
		and: [self exampleName = anotherExample exampleName]
		and: [self argumentScripts = anotherExample argumentScripts]

	