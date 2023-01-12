process control
suspendProcess
	
	(self tracingProcessAndDescendantsActiveAtBack) do: [:p |
		(p isSuspended not and: [p isTerminated not]) ifTrue: [p suspend]]