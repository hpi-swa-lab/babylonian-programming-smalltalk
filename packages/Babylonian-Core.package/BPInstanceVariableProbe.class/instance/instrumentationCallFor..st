serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ '(self bpTraceVariable: [{1}] forProbe: {2} linked: \{{3}\} inContext: thisContext)' 
			format: {actualEnclosedExpressionSource . 
					self id. 
					((self linkedProbes gather: [:probe | probe id]) joinSeparatedBy: ' . ')}