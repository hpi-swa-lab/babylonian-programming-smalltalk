process control
terminateTracingProcess

	self tracingProcessAndDescendantsActiveAtBack do: [:p |
		p isTerminated ifFalse: [p terminate]]