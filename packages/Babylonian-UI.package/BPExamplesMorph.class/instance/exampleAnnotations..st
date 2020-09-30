accessing
exampleAnnotations: annotations
	
	exampleAnnotations := annotations.
	self addAllMorphsFront: (annotations collect: [:a | a asMorph]).