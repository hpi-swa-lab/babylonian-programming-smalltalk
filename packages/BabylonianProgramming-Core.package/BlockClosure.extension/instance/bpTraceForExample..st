*BabylonianProgramming-Core
bpTraceForExample: anExample 
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
		BPActiveReplacer value: tracer during: [
		BPActiveAsserter value: tracer during: self]]].
	^ tracer trace