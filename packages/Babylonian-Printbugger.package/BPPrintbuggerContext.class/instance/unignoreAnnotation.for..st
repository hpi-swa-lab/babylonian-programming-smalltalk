state
unignoreAnnotation: anAnnotationId for: aBPExample

	exampleToIgnoredAnnotations 
		at: aBPExample uniqueIdentifier 
		ifPresent: [:aSet | 
			aSet remove: anAnnotationId.
			aSet ifEmpty: [exampleToIgnoredAnnotations removeKey: aBPExample uniqueIdentifier]].