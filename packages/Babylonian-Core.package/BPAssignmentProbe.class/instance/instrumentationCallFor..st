serialization
instrumentationCallFor: actualEnclosedExpressionSource

	^ '(self bpTraceAssignmentOf: [{1}] before: \{{2}\} forProbe: {3} inContext: thisContext)' 
		format: {actualEnclosedExpressionSource . 
				((self variableNames gather: [:name | {name printString . name}]) joinSeparatedBy: ' . ') .
				self id}