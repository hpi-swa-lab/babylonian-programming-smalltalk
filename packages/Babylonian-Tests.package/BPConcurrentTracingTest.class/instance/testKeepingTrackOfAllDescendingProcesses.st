tests
testKeepingTrackOfAllDescendingProcesses

	| example traceAndProcess semaphore process1 descendants |
	example := BPMethodExample new
		exampleName: 'test example';
		method: BPTestManuallyInstrumentedClass>>#methodA;
		yourself.
	descendants := nil.
	semaphore := Semaphore new.
	traceAndProcess := [2+3.
	process1 := Processor activeProcess.
	 	[2+3. 
			[descendants := BPProcessGenealogy allDescendantsOf: process1.
			semaphore signal.] 
				forkNamed: 'the third'
		] forkNamed: 'the second'] bpTraceInBackgroundForExample: example.
	traceAndProcess second resume.
	semaphore wait.

	self assert: descendants size = 2.
	self assert: descendants first name = 'the second'.
	self assert: descendants second name = 'the third'.