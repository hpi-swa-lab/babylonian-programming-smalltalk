accessing
belongingAnnotation

	^ (self containedMethodReference compiledMethod bpAnnotations)
		detect: [:anAnnotation | anAnnotation id == self belongingAnnotationId]
		ifFound: [:anAnnotation | anAnnotation methodReference: self containedMethodReference]
		ifNone: [nil]
		