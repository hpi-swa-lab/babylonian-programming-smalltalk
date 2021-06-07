accessing
haltAt: aProbeId onCount: aChronologicalPosition
	
	self flag: #todo. "merge with self bpTraceForExample:andHaltAt: ... or maybe remove the other method"
	haltProbeId := aProbeId.
	haltChronologicalPosition := aChronologicalPosition.
	haltProbeIdCount := 0.