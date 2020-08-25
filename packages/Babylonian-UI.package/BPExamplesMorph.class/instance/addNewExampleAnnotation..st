adding examples
addNewExampleAnnotation: anExampleAnnotation

	self exampleAnnotations addLast: anExampleAnnotation.
	self addMorphFront: anExampleAnnotation createExampleMorph.