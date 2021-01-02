*Babylonian-Core
bpTraceWith: tracer
	
	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
			[(self bpTraceExecutionResult: self value)]
				on: Error, Halt
				do: [:e | 
					#bpInstrumented withoutLayerDo: [
						BPActiveTracer value traceError: e.
						BPActiveTracer value traceExecutionResult: e.
						BPExampleExecutionInterrupted signal: tracer completeTrace]]]].
	^ tracer completeTrace