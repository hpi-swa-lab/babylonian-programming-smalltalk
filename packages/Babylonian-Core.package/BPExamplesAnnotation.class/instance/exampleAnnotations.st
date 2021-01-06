accessing
exampleAnnotations
	
	^ self examples collect: [:example |
		BPExampleAnnotation newFor: example in: self methodReference]