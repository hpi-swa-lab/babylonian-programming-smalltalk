private
annotationMorphFor: anAnnotation

	
	^ (super annotationMorphFor: anAnnotation)
		vResizing: #rigid;
		extent: 1@1;
		hide;
		yourself