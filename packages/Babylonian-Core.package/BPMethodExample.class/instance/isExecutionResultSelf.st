tracing
isExecutionResultSelf
	
	"Execute on a copy to avoid side effects affecting the result itself."
	|copyToExecuteOn |
	copyToExecuteOn := self execute veryDeepCopy.
	(copyToExecuteOn class == self method methodClass)
		ifFalse: [^ false].
	
	^ copyToExecuteOn == (copyToExecuteOn 
								perform: self method selector 
								withArguments: self newArguments)