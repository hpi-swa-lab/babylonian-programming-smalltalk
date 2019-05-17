rewrite rules
bpAssert: annotation with: originalExpressionSource
	
	^ (annotation includesKey: #for) 
		ifTrue: ['(self bpAssertAfter: [{1}] that: {2} forAssertion: {3} given: {4} inContext: thisContext)' 
			format: {originalExpressionSource . annotation at: #that . self nextProbeId . annotation at: #for}]
		ifFalse: ['(self bpAssertAfter: [{1}] that: {2} forAssertion: {3} inContext: thisContext)' 
			format: {originalExpressionSource . annotation at: #that . self nextProbeId}]