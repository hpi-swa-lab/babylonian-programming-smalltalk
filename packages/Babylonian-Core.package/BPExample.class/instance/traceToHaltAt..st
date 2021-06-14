tracing
traceToHaltAt: probeId
	
	self traceToHaltAt: probeId onCount: 1. "halt on first occurence of probeId"