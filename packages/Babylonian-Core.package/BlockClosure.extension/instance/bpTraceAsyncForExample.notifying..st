*Babylonian-Core
bpTraceAsyncForExample: anExample notifying: requestorBlock
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	requestorBlock value: {tracer intermediateTrace . nil}.
	^ self bpTraceWith: tracer