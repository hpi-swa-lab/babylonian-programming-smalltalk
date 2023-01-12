tests
testSuspendOnErroredDescendantProcesses

	| traceAndProcess descendants processesStartedSemaphore allTracingProcesses |
	descendants := nil.
	preventTerminationSemaphore := Semaphore new.
	processesStartedSemaphore := Semaphore new.
	traceAndProcess := [
		processesToTerminate add: ([[2 + 3. Processor yield] repeat] 
			forkAt: Processor userBackgroundPriority
			named: 'test process infinite').
		processesToTerminate add: ([2 + 3. 1 / 0. 2 + 3] 
			forkNamed: 'test process error').
		processesStartedSemaphore signal.
		preventTerminationSemaphore wait.] bpTraceInBackgroundForExample: example.
	example traceInformation tracingProcess: traceAndProcess second.
	traceAndProcess second resume.
	processesStartedSemaphore wait.
	
	allTracingProcesses := (BPProcessGenealogy allDescendantsOf: traceAndProcess second) , {traceAndProcess second}.
	self assert: (allTracingProcesses allSatisfy: [:p | p isSuspended]).
	