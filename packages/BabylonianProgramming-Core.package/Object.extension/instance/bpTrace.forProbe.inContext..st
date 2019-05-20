*BabylonianProgramming-Core
bpTrace: anObject forProbe: probeId inContext: aContext

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject 
			forProbe: probeId 
			inContext: aContext]