private
toggleAnnotationVisibilityButtonClicked

	self isTraceValueVisible
		ifTrue: [context ignoreAnnotation: traceValue belongingAnnotationId for: containingSwimlane example.]
		ifFalse: [context unignoreAnnotation: traceValue belongingAnnotationId for: containingSwimlane example].

	context annotationIdToFlash: traceValue belongingAnnotationId.
	containingSwimlane update: #toggleAndFlashAnnotation with: containingSwimlane example.