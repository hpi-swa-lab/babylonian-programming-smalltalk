private
haltButtonClickedFor: aTraceValue and: aBPExample
	
	self flag: #todo. "merge with same method from BPProbeMorph"
	aBPExample traceToHaltAt: (aTraceValue belongingProbeId) onCount: (aTraceValue chronologicalPosition).