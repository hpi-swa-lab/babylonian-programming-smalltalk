adding examples
addNewExampleAnnotation: anExampleAnnotation
	
	| newMorph |
	self exampleAnnotations addLast: anExampleAnnotation.
	newMorph := anExampleAnnotation asMorph.
	newMorph setProperty: #bpExampleIsNew toValue: true. 
	self addMorph: newMorph inFrontOf: buttonBar.