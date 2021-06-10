serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ self hasExpression 
		ifTrue: [
			'(self bpTrace: [{1}] through: {2} forProbe: {3} inContext: thisContext)' 
				format: {actualEnclosedExpressionSource . self expression . self id}]
		ifFalse: [
			'(self bpTrace: [{1}] forProbe: {2} inContext: thisContext)' 
				format: {actualEnclosedExpressionSource . self id}]