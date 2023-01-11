tracing
tracingProcessIsSuspended
	
	^ self tracingProcess notNil and: [self traceInformation isProcessSuspended]