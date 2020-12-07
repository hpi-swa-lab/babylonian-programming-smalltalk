process control
terminateTracingProcess

	self tracingProcess ifNotNil: [:aTracingProcess | aTracingProcess terminate].