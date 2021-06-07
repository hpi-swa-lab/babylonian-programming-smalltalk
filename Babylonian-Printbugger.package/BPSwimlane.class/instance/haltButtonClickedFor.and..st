private
haltButtonClickedFor: aProbeId and: aBPExample
	
	self flag: #todo. "merge with same method from BPProbeMorph"
	aBPExample traceToHaltAt: aProbeId.