serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ '(self bpTrace: [{1}] forProbe: {2} inContext: thisContext)' 
		format: {actualEnclosedExpressionSource . self id}