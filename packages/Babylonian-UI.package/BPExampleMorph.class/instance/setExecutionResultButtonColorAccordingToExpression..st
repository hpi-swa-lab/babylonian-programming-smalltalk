initialization
setExecutionResultButtonColorAccordingToExpression: aBooleanExpression
	
	 aBooleanExpression
		ifTrue: [executionResultButton color: Color paleGreen]
		ifFalse: [executionResultButton color: Color paleRed]