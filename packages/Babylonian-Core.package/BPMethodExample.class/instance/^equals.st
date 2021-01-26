comparing
= anotherExample
	
	^ anotherExample class = self class 
		and: [self method == anotherExample method]
		and: [self exampleName = anotherExample exampleName]
		and: [self argumentScripts = anotherExample argumentScripts]
	