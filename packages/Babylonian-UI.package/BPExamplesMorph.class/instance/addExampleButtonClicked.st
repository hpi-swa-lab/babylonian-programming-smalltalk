adding examples
addExampleButtonClicked
	

	| newExample newExampleName |
	newExampleName := 'some example ' , 100 random.
	newExample := (BPExample newFor: self containingBrowser compiledMethod)
		exampleName: newExampleName;
		yourself.
		
	self addNewExampleAnnotation: (BPExampleAnnotation 
		newFor: newExample 
		in: self containingBrowser methodReference)