tracing
resumeTracing
	(self tracingProcess notNil and: [self traceInformation isProcessSuspended])
		ifTrue: [self tracingProcess resume] 