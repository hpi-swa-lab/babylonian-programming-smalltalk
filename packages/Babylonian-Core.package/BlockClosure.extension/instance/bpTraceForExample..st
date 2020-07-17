*Babylonian-Core
bpTraceForExample: anExample 
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
			self 
				on: Error, Halt
				do: [:e | 
					BPActiveTracer value traceException: e.
					BPExampleExecutionInterrupted signal: tracer trace]]].
	^ tracer trace