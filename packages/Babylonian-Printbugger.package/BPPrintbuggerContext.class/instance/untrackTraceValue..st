state
untrackTraceValue: aTraceValue
	
	|traceMethod|
	traceMethod := aTraceValue containedMethodReference.
	methodToCount at: traceMethod 
		ifPresent: [:aCount |
			(aCount == 1)
				ifTrue: [
					methodToCount removeKey: traceMethod.
					self changed: #updatedContext.]
				ifFalse: [methodToCount at: traceMethod put: (aCount -1 )]] 
		ifAbsent: ["don't care"].