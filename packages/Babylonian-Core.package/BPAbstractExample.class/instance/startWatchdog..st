private
startWatchdog: watchdogBlock

	| watchdog |
	watchdog := watchdogBlock newProcess.
	watchdog priority: Processor timingPriority-1.
	watchdog resume.	