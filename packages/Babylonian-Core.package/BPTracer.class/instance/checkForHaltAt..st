private
checkForHaltAt: aProbeId
	
	haltProbeId == aProbeId ifTrue: [
		haltProbeIdCount == probeIdCount
			ifTrue: [BPExampleExecutionInterrupted signal]
			ifFalse: [probeIdCount := probeIdCount + 1]]