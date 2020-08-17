*Babylonian-Core
bpTraceForExample: anExample 
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	^ self bpTraceWith: tracer