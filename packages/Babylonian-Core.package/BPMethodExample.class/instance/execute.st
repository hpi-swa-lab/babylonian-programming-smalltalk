tracing
execute
	
	|executionResult|
	executionResult := [self newReceiver 
							perform: self method selector 
							withArguments: self newArguments]
								on: Error
								do: [:theError | theError].
	self bpTraceExecutionResult: executionResult.
	^ executionResult