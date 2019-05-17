*BabylonianProgramming-Core
bpAssert: aBlock forAssertion: anAssertionId given: anExampleName inContext: aContext

	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			check: aBlock 
			forAssertion: anAssertionId 
			given: anExampleName 
			inContext: aContext].