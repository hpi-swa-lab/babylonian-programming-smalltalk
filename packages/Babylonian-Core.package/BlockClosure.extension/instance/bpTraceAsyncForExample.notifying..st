*Babylonian-Core
bpTraceAsyncForExample: anExample notifying: requestorBlock
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	requestorBlock value: tracer intermediateTrace.
	^ self bpTraceWith: tracer