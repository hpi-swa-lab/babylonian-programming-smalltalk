initialization
setColorOfExecutionResultButtonForTrace: aTrace
	
	 aTrace executionResult = self example newExpectedResultObject
		ifTrue: [executionResultButton color: Color paleGreen]
		ifFalse: [executionResultButton color: Color paleRed].