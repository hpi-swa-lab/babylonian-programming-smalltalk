tests
tearDown

	10 timesRepeat: [preventTerminationSemaphore signal].
	processesToTerminate do: [:p | 
		p isTerminated ifFalse: [p terminate]].