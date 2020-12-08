initialization
setExecutionResultButtonContentForTrace: aTrace

	executionResultButton 
		label: 'result: ', (self executionResultAsString: aTrace executionResult);
		target: [aTrace executionResult inspect].
		
	self setColorOfExecutionResultButtonForTrace: aTrace.