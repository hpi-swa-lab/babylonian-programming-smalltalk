*Babylonian-Core
bpTraceExecutionResult: anObject

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value traceExecutionResult: anObject] 