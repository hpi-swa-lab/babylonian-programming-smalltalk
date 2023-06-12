private
countIn: aTraceValue
	
	|traceMethod|
	traceMethod := aTraceValue containedMethodReference.
	methodToCount at: traceMethod 
		ifPresent: [:aCount | methodToCount at: traceMethod put: (aCount+ 1)] 
		ifAbsent: [
			methodToCount at: traceMethod put: 1].
	