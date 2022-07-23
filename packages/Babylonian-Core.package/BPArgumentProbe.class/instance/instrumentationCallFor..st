serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ self hasExpression 
		ifTrue: [
			'(self bpTraceMethodArgument: {1} through: {2} forProbe: {3} inContext: thisContext)' 
				format: {argumentName . self expression . self id}]
		ifFalse: [
			'(self bpTraceMethodArgument: {1} forProbe: {2} inContext: thisContext)' 
				format: {argumentName . self id}]