serialization
instrumentationCallFor: actualEnclosedExpressionSource

	"Currently not used as instance probes do not rewrite a class definition in which they exist"
	^ '(self bpTraceVariable: [{1}] forProbe: {2} linked: \{{3}\} inContext: thisContext)' 
			format: {actualEnclosedExpressionSource . 
					self id. 
					((self linkedProbes gather: [:probe | probe id]) joinSeparatedBy: ' . ')}