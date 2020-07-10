private
preserveCurrentAnnotationDuring: aBlock

	| previousAnnotation |
	previousAnnotation := currentAnnotation.
	aBlock ensure: [currentAnnotation := previousAnnotation].