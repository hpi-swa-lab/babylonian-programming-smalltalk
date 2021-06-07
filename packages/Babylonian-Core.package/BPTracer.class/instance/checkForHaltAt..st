private
checkForHaltAt: aProbeId
	
	haltProbeId == aProbeId ifTrue: [
		haltProbeIdCount == haltChronologicalPosition
			ifTrue: [	BPExampleExecutionInterrupted signal]
			ifFalse: [haltProbeIdCount := haltProbeIdCount + 1]]