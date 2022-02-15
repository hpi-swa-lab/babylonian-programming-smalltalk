private - ui
toggleAnnotationVisibilityButtonClicked: aTraceValue

	(self isTraceValueVisible: aTraceValue)
		ifTrue: [context ignoreAnnotation: aTraceValue belongingAnnotationId for: example.]
		ifFalse: [context unignoreAnnotation: aTraceValue belongingAnnotationId for: example].

	annotationIdToFlash := aTraceValue belongingAnnotationId.
	self submorphsDo: [:aSubmorph | aSubmorph delete].
	self visualize. 
	annotationIdToFlash := nil.