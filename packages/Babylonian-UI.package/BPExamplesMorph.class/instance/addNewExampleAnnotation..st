adding examples
addNewExampleAnnotation: anExampleAnnotation
	
	self exampleAnnotations addLast: anExampleAnnotation.
	self addMorph: anExampleAnnotation asMorph inFrontOf: buttonBar.