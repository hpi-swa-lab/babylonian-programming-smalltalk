executing
runWithTimeoutOn: initialState
	"Code heavily based off BlockClosure>>valueWithin:onTimeout:.
	See there for explanation"
	| delay watchdog duration complete |
	duration := self timeout milliSeconds.
	delay := duration asDelay.
	complete := false.
	"duration <= Duration zero ifTrue: [^ timeoutBlock value ]."

	watchdog := [ 
		delay wait. 
		"We sadly cannot simply ask self tracingIsStillRunning as the values rely
		on this method's return value which is not done at this point. So uglyish complete workaround" 
		complete ifFalse: [self tracingProcess suspend]] newProcess.
	watchdog priority: Processor timingPriority-1.
	watchdog resume.		
	
	[ |result| 
	result := self runOn: initialState.  
	complete := true. 
	^ result ] ensure: [delay delaySemaphore signal]