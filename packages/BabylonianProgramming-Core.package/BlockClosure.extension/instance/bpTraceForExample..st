*BabylonianProgramming-Core
bpTraceForExample: anExample 
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	BPActiveTracer value: tracer during: [BPActiveReplacer value: tracer during: self].
	^ tracer trace