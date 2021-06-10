*Babylonian-Core
bpTraceForExample: anExample andHaltAt: aProbeId
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	tracer haltAt: aProbeId.
	^ self bpTraceWith: tracer