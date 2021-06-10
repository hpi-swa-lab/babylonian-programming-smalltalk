*Babylonian-Core
bpTrace: anObject through: aBlock forProbe: probeId inContext: aContext
	
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject
			through: aBlock
			forProbe: probeId 
			inContext: aContext]