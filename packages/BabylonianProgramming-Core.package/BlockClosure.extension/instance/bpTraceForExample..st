*BabylonianProgramming-Core
bpTraceForExample: anExample 
	
	| tracer |
	tracer := BPTracer forExample: anExample.
	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
			self 
				on: BPExampleExecutionInterrupted
				do: [:e | "just continue"]
				on: Error
				do: [:e | BPActiveTracer value traceException: e]]].
	^ tracer trace