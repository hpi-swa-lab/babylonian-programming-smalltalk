*Babylonian-Core
bpTraceWith: tracer
	
	<bpRelevantMethod>
	#bpInstrumented withLayerDo: [
		BPActiveTracer value: tracer during: [
			self
				on: Error, Halt
				do: [:e | 
					#bpInstrumented withoutLayerDo: [
						BPActiveTracer value traceError: e.
						BPExampleExecutionInterrupted signal: tracer completeTrace]]]].
	^ tracer completeTrace