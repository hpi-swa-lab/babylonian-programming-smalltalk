process control
terminateTracingProcess

	self tracingProcess ifNotNil: [:p | p terminate]