tracing
tracingIsStillRunning
	
	^ self tracingProcess notNil and: [self tracingProcess isTerminated not]