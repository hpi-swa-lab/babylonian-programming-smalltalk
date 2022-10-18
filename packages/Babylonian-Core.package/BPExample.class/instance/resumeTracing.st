tracing
resumeTracing
	(self tracingProcess notNil and: [traceInformation isProcessSuspended])
		ifTrue: [self tracingProcess resume] 