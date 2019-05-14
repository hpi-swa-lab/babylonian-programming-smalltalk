*BabylonianProgramming-Core
bpTrace: anObject forId: probeId inContext: aContext

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject 
			forId: probeId 
			inContext: aContext]