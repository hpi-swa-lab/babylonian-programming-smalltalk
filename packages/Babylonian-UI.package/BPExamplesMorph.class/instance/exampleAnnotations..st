accessing
exampleAnnotations: annotations
	
	exampleAnnotations := annotations.
	self addAllMorphsFront: (annotations collect: [:anAnnotation | anAnnotation asMorph]).