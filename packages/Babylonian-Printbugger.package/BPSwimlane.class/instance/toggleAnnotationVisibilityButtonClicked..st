private - ui
toggleAnnotationVisibilityButtonClicked: anAnnotationId

	((context ignoredAnnotationsOf: example) includes: anAnnotationId)
		ifTrue: [context unignoreAnnotation: anAnnotationId for: example]
		ifFalse: [context ignoreAnnotation: anAnnotationId for: example].

	self submorphsDo: [:aSubmorph | aSubmorph delete].
	self visualize. 