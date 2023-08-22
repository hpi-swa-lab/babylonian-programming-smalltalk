executing
runWithTimeoutOn: initialState
	| complete semaphore |
	semaphore := Semaphore new.
	complete := false.
	
	self startWatchdog: [
		semaphore waitTimeoutMSecs: self timeout. 
		"We sadly cannot simply ask self tracingIsStillRunning as the values rely
		on this method's return value which is not done at this point. So uglyish complete workaround"  
		complete ifFalse: [self suspendTracingProcess]].

	[ ^ self runOn: initialState] ensure: [
		complete := true.
		semaphore terminateProcess.]