actions
deleteAllAnnotationsClicked

	"Deletes all annotations for this example."
	| browser annotations |	
	self userWantsToDeleteAllAnnotations ifFalse: [^ self].
	
	browser := BPBrowser open.
	annotations := self example trace probes.
	annotations addAll: self example trace assertions.
	annotations do: [:annotationTraceValues | 
		browser browseReference: annotationTraceValues first containedMethodReference.
		browser removeAnnotations: {annotationTraceValues first belongingAnnotation}].

	browser currentWindow delete.