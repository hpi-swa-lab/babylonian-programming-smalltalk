*Babylonian-Core
bpTraceExecutionResult: anExecutionResult 
	
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			traceExecutionResult: anExecutionResult]