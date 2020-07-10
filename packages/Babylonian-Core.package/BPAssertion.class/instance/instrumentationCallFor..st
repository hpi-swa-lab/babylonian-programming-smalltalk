serialization
instrumentationCallFor: actualEnclosedCode

	^ '(self bpAssertAfter: [{1}] that: {2} forAssertion: {3} given: {4} inContext: thisContext)' 
			format: {actualEnclosedCode . self assertion . self id . self exampleName printString}