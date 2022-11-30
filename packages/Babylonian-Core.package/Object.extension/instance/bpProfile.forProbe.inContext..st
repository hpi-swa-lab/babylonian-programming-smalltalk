*Babylonian-Core
bpProfile: aBlock forProbe: probeId inContext: aContext
	
	<bpRelevantMethod>
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			profile: aBlock
			forProbe: probeId
			inContext: aContext]