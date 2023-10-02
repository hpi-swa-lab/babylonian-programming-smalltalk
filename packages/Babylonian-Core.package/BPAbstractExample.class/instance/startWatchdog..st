private
startWatchdog: watchdogBlock

	watchdogBlock 
		forkAt: Processor timingPriority-1 
		named: 'watchdog for ' , self exampleName.