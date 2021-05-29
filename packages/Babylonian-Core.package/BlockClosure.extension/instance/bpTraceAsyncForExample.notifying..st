*Babylonian-Core
bpTraceAsyncForExample: anExample notifying: requestorBlock
	
	<bpRelevantMethod>
	| tracer |
	tracer := BPTracer forExample: anExample.
	requestorBlock value: tracer intermediateTrace.
	^ self bpTraceWith: tracer