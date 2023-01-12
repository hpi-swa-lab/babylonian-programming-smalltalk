tests
testProbingAMethodCalledInANewProcess

	| traceAndProcess semaphore |
	semaphore := Semaphore new.
	traceAndProcess := [
		[BPTestManuallyInstrumentedClass new methodA] fork.
		semaphore signal.] 
		bpTraceInBackgroundForExample: example.
	traceAndProcess second resume.
	semaphore wait.

	self assert: (example trace valuesForProbeId: 10) notEmpty.
	self assert: 2 equals: (example trace valuesForProbeId: 10) first tracedValue.