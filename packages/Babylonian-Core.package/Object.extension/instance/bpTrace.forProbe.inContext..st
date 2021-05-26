*Babylonian-Core
bpTrace: anObject forProbe: probeId inContext: aContext
	
	<bpRelevantMethod>
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject 
			through: [:r | r]
			forProbe: probeId 
			inContext: aContext]