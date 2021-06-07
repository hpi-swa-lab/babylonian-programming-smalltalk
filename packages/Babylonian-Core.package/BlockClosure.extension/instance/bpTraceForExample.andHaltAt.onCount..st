*Babylonian-Core
bpTraceForExample: anExample andHaltAt: aProbeId onCount: aChronologicalPosition
	
	| tracer |
	self flag: #todo. "merge with self bpTraceForExample:andHaltAt: ... or maybe remove the other method"
	tracer := BPTracer forExample: anExample.
	tracer haltAt: aProbeId onCount: aChronologicalPosition.
	^ self bpTraceWith: tracer