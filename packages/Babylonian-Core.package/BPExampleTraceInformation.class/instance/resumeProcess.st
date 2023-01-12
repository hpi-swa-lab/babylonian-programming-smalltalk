process control
resumeProcess
	
	self tracingProcessAndDescendantsActiveAtBack reversed do: [:p |
		p isSuspended ifTrue: [p resume]]