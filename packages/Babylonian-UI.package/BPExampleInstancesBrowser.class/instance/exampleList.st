accessing
exampleList
	
	^ self actualExampleList collect: [:methodReference | 
		methodReference compiledMethod methodClass printString , 
		' ' , 
		methodReference compiledMethod exampleInstanceName]