*Babylonian-Core
bpTraceForExample: anExample andHaltAt: aProbeId onCount: aChronologicalPosition
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	tracer haltAt: aProbeId onCount: aChronologicalPosition.
	^ self bpTraceWith: tracer