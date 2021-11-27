private
checkForHaltAt: aAnnotationId

	haltAnnotationId == aAnnotationId ifTrue: [
		haltAnnotationIdCount == annotationIdCount
			ifTrue: [BPExampleExecutionInterrupted signal]
			ifFalse: [annotationIdCount := annotationIdCount + 1]]