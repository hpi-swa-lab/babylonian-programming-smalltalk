private
checkForHaltAt: aProbeId
	
	haltProbeId == aProbeId ifTrue: [BPExampleExecutionInterrupted signal]