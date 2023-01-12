tests
testTerminatingAllDescendantProcesses

	| traceAndProcess process1 descendants descendantsSetSemaphore preventTerminationSemaphore |
	descendants := nil.
	preventTerminationSemaphore := Semaphore new.
	descendantsSetSemaphore := Semaphore new.
	traceAndProcess := [2+3.
		process1 := Processor activeProcess.
	 	[2+3. 
			[descendants := BPProcessGenealogy allDescendantsOf: process1.
			descendantsSetSemaphore signal.
			preventTerminationSemaphore wait.] 
				forkNamed: 'the third'.
		preventTerminationSemaphore wait.
		] forkNamed: 'the second'.
		preventTerminationSemaphore wait.] bpTraceInBackgroundForExample: example.
	traceAndProcess second resume.
	descendantsSetSemaphore wait.
	
	self assert: (descendants allSatisfy: [:p | p isTerminated not]).
	
	example traceInformation tracingProcess: traceAndProcess second.
	example ensureTerminatedProcess.

	self assert: (descendants allSatisfy: [:p | p isTerminated]).