tracing
tracingProcessIsSuspended
	
	^ self tracingProcess notNil and: [traceInformation isProcessSuspended]