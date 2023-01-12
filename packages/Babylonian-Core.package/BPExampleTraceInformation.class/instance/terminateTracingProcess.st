process control
terminateTracingProcess

	self tracingProcess ifNotNil: [:aTracingProcess | 
		{aTracingProcess} , (BPProcessGenealogy allDescendantsOf: aTracingProcess) do: [:p |
			p isTerminated ifFalse: [p terminate]]].