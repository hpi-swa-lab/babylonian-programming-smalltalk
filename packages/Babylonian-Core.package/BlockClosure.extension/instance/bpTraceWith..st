*Babylonian-Core
bpTraceWith: tracer

	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
			self 
				on: Error, Halt
				do: [:e | 
					BPActiveTracer value traceException: e.
					BPExampleExecutionInterrupted signal: tracer completeTrace]]].
	^ tracer completeTrace