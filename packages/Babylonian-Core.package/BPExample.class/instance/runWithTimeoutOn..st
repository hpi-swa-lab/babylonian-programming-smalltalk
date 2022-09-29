executing
runWithTimeoutOn: initialState
	"Code heavily based off BlockClosure>>valueWithin:onTimeout:.
	See there for explanation"
	| delay watchdog complete |
	delay := self timeout milliSeconds asDelay.
	complete := false.

	watchdog := [ 
		delay wait. 
		"We sadly cannot simply ask self tracingIsStillRunning as the values rely
		on this method's return value which is not done at this point. So uglyish complete workaround" 
		complete ifFalse: [self tracingProcess suspend]] newProcess.
	watchdog priority: Processor timingPriority-1.
	watchdog resume.		
	
	[ ^ self runOn: initialState] ensure: [
		complete := true. 
		delay delaySemaphore signal. ]