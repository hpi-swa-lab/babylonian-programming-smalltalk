tracing
tracingIsStillRunning
	
	^ traceInformation tracingProcess notNil and: [
		traceInformation tracingProcess isTerminated not]