tracing
traceToHaltAt: aProbeId
	
	self traceToHaltAt: aProbeId onCount: 1. "halt on first occurence of probeId"