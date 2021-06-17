private
haltButtonClickedFor: aTraceValue and: aBPExample
	
	| probe positionInProbe |
	probe := aBPExample trace probes at: aTraceValue belongingProbeId.
	positionInProbe := (probe 
		collect: [:aValue | aValue chronologicalPosition])
		indexOf: aTraceValue chronologicalPosition.

	aBPExample traceToHaltAt: (aTraceValue belongingProbeId) onCount: positionInProbe.