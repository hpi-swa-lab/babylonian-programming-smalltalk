*Babylonian-Core
bpAssertAfter: codeBlock that: assertionBlock forAssertion: anAssertionId given: anExampleName inContext: aContext
	
	<bpRelevantMethod>
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			check: assertionBlock
			after: codeBlock
			forAssertion: anAssertionId 
			given: anExampleName 
			inContext: aContext].