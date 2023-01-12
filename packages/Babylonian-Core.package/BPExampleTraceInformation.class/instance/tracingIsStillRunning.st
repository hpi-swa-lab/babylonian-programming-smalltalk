process control
tracingIsStillRunning
	
	^ self tracingProcess notNil and: [self tracingProcess isTerminated not]