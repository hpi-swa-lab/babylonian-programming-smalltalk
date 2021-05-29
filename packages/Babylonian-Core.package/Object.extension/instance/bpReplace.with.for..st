*Babylonian-Core
bpReplace: aBlock with: anObject for: exampleName
	
	<bpRelevantMethod>
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			replace: aBlock 
			with: anObject 
			for: exampleName].