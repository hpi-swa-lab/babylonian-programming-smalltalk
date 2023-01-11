process control
terminateTracingProcess

	self tracingProcess ifNotNil: [:aTracingProcess | 
		aTracingProcess isTerminated ifFalse: [
			aTracingProcess terminate]].