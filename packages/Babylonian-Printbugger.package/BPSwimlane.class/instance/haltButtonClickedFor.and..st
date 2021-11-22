private - ui
haltButtonClickedFor: aTraceValue and: aBPExample

	aBPExample 
		traceToHaltAt: aTraceValue belongingAnnotationId
		onCount: (self positionInProbeFor:aTraceValue and: aBPExample).