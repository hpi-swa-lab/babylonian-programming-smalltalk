accessing
belongingAnnotation

	^ (self containedMethodReference compiledMethod bpAnnotations)
		detect: [:anAnnotation | anAnnotation id == self belongingAnnotationId]
		ifNone: [nil]