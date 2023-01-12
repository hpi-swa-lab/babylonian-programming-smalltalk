process control
resumeProcess
	
	self tracingProcessAndDescendants do: [:p |
		p isSuspended ifTrue: [p resume]]