initialization
setColorOfExecutionResultButtonForTrace: aTrace
	
	 (aTrace executionResult isKindOf: Exception) 
		ifTrue: [
			self setExecutionResultButtonColorAccordingTo: (aTrace executionResult class = self example newExpectedResultObject)]
		ifFalse: [
			self setExecutionResultButtonColorAccordingTo: (aTrace executionResult = self example newExpectedResultObject)]