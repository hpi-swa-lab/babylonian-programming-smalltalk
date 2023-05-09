private
positionInAnnotations

	|annotations|
	annotations := traceValue belongingAnnotation isProbe 
		ifTrue: [containingSwimlane example probes] 
		ifFalse: [containingSwimlane example assertions].
	
	^ ((annotations at: traceValue belongingAnnotationId) collect: [:aValue | aValue  chronologicalPosition])
			indexOf: traceValue chronologicalPosition.