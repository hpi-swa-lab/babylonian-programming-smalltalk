private
haltButtonClickedFor: aTraceValue and: aBPExample
	
	self flag: #todo. "merge with same method from BPProbeMorph"
	self halt.
	aBPExample traceToHaltAt: (aTraceValue belongingProbeId) onCount: (aTraceValue chronologicalPosition).
	
	self flag: #todo. "aTraceValue chronologicalPosition"