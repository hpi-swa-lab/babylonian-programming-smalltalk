serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ '(self bpTrace: [{1}] through: [:result | result class] forProbe: {2} inContext: thisContext)' 
		format: {actualEnclosedExpressionSource .
				self id}