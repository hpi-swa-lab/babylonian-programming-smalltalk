process control
suspendProcess
	
	(self tracingProcessAndDescendants copyWithout: Processor activeProcess) do: [:p |
		(p isSuspended not and: [p isTerminated not]) ifTrue: [p suspend]]