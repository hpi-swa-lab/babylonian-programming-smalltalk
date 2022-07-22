*Babylonian-Core
bpTraceForExample: anExample andHaltAt: anAnnotationId onCount: aCount

	| tracer |
	tracer := BPTracer forExample: anExample.
	tracer haltAt: anAnnotationId onCount: aCount.
	^ self bpTraceWith: tracer