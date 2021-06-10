*Babylonian-Core
bpTraceForExample: anExample andHaltAt: aProbeId onCount: aCount
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	tracer haltAt: aProbeId onCount: aCount.
	^ self bpTraceWith: tracer