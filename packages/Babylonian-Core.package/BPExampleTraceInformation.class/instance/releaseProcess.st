process control
releaseProcess

	self assert: (self tracingProcessAndDescendants allSatisfy: [:p | p isTerminated]).
	tracingProcess := nil.