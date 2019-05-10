*BabylonianProgramming-Core
bpReplace: aBlock with: anObject for: exampleName

	^ #bpInstrumented withoutLayerDo: [BPActiveReplacer value replace: aBlock with: anObject for: exampleName].