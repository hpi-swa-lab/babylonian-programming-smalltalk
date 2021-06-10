*Babylonian-Core
bpTraceForExample: anExample
	
	<bpRelevantMethod>
	| tracer |
	tracer := BPTracer forExample: anExample.
	^ self bpTraceWith: tracer