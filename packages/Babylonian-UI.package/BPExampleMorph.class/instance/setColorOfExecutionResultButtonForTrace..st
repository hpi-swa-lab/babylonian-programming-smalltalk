initialization
setColorOfExecutionResultButtonForTrace: aTrace
	
	 (aTrace executionResult isKindOf: Exception) 
		ifTrue: [
			self setExecutionResultButtonColorAccordingToExpression: (aTrace executionResult class = self example newExpectedResultObject)]
		ifFalse: [
			self setExecutionResultButtonColorAccordingToExpression: (aTrace executionResult = self example newExpectedResultObject)]
	
	