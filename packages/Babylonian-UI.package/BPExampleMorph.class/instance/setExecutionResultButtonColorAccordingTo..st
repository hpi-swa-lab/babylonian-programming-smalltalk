initialization
setExecutionResultButtonColorAccordingTo: aBoolean
	
	 aBoolean
		ifTrue: [executionResultButton color: Color paleGreen]
		ifFalse: [executionResultButton color: Color paleRed]