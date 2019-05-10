*BabylonianProgramming-Core
bpTrace: anObject forId: probeId forExpression: expressionSource inContext: aContext

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject 
			forId: probeId 
			forExpression: expressionSource 
			inContext: aContext]