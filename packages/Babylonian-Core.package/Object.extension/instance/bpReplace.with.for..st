*Babylonian-Core
bpReplace: aBlock with: anObject for: exampleName

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			replace: aBlock 
			with: anObject 
			for: exampleName].