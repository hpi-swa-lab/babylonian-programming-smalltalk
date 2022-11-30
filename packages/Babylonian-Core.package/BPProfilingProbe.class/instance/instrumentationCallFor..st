serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ '(self bpProfile: [{1}] forProbe: {2} inContext: thisContext)' 
		format: {actualEnclosedExpressionSource .
				self id}