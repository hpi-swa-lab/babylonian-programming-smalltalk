*BabylonianProgramming-Core
bpTraceForExample: anExample 
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
			self 
				on: Error
				do: [:e | 
					BPActiveTracer value traceException: e.
					BPExampleExecutionInterrupted signal: tracer trace]]].
	^ tracer trace