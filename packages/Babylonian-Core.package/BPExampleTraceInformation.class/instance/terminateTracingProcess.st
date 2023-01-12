process control
terminateTracingProcess

	self tracingProcessAndDescendants do: [:p |
		p isTerminated ifFalse: [p terminate]]