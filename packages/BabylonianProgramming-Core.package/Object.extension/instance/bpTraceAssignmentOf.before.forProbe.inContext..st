*BabylonianProgramming-Core
bpTraceAssignmentOf: aBlock before: variableValueTuples forProbe: probeId inContext: aContext

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			traceAssignment: aBlock
			previousValues: variableValueTuples
			forProbe: probeId
			inContext: aContext]