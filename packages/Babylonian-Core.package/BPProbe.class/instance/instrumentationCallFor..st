serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ self hasExpression 
		ifTrue: [ |rewrittenExpression|
			rewrittenExpression := self makeReferenceReadsDynamic: self expression.
			'(self bpTrace: [{1}] through: {2} forProbe: {3} inContext: thisContext)' 
				format: {actualEnclosedExpressionSource . rewrittenExpression . self id}]
		ifFalse: [
			'(self bpTrace: [{1}] forProbe: {2} inContext: thisContext)' 
				format: {actualEnclosedExpressionSource . self id}]