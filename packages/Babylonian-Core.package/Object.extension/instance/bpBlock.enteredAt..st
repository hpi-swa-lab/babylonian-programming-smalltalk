*Babylonian-Core
bpBlock: blockId enteredAt: aContext
	
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			recordBlock: blockId
			enteredFrom: aContext].