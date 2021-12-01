private
checkForHaltAt: anAnnotationId

	haltAnnotationId = anAnnotationId ifTrue: [
		haltAnnotationIdCount == annotationIdCount
			ifTrue: [BPExampleExecutionInterrupted signal]
			ifFalse: [annotationIdCount := annotationIdCount + 1]]