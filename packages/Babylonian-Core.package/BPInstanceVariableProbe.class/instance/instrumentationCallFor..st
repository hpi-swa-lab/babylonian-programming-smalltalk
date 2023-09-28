as yet unclassified
instrumentationCallFor: actualEnclosedExpressionSource

	^ '(self bpTraceVariable: [{1}] forProbe: {2} inContext: thisContext)' 
			format: {actualEnclosedExpressionSource . self id}