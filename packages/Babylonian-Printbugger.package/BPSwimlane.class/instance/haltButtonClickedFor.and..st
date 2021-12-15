private - ui
haltButtonClickedFor: aTraceValue and: aBPExample

	aBPExample 
		traceToHaltAt: aTraceValue belongingAnnotationId
		onCount: (self positionInAnnotationsFor: aTraceValue and: aBPExample).