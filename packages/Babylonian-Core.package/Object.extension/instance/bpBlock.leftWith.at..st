*Babylonian-Core
bpBlock: blockId leftWith: aValue at: aContext
	
	#bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			recordBlock: blockId
			in: aContext method
			leftFrom: aContext
			with: aValue].
	^ aValue