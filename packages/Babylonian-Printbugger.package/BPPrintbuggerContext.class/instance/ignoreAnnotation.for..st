state
ignoreAnnotation: anAnnotationId for: aBPExample

	exampleToIgnoredAnnotations 
		at: aBPExample uniqueIdentifier 
		ifPresent: [:aSet | aSet add: anAnnotationId]
		ifAbsentPut: {anAnnotationId} asSet.