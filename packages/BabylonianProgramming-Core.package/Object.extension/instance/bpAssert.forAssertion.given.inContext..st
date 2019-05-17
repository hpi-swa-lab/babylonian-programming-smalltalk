*BabylonianProgramming-Core
bpAssert: aBlock forAssertion: anAssertionId given: anExampleName inContext: aContext

	^ #bpInstrumented withoutLayerDo: [
		BPActiveAsserter value 
			check: aBlock 
			forAssertion: anAssertionId 
			given: anExampleName 
			inContext: aContext].