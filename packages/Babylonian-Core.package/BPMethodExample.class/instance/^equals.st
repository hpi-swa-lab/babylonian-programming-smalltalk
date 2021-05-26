comparing
= anotherExample
	
	^ anotherExample class = self class 
		and: [self method reference = anotherExample method reference]
		and: [self exampleName = anotherExample exampleName]
		and: [self argumentScripts = anotherExample argumentScripts]
	