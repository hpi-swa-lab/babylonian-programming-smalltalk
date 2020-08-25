accessing
exampleAnnotations: annotations
	
	exampleAnnotations := annotations.
	self addAllMorphs: (annotations collect: [:a | a createExampleMorph])