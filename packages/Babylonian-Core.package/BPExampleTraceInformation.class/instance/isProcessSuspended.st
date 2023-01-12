process control
isProcessSuspended

	^ self tracingProcess notNil and: [self tracingProcess isSuspended]