private - ui
haltButtonClickedFor: aTraceValue and: aBPExample
	
	aBPExample 
		traceToHaltAt: aTraceValue belongingProbeId
		onCount: (self positionInProbeFor:aTraceValue and: aBPExample).