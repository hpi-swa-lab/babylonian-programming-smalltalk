accessing
belongingProbe
	
	^ (self containedMethodReference compiledMethod bpAnnotations)
		detect: [:anAnnotation | anAnnotation id == self belongingProbeId]
		ifNone: [nil]