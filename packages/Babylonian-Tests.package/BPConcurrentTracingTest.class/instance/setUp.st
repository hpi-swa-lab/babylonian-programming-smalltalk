tests
setUp

	preventTerminationSemaphore := Semaphore new.
	processesToTerminate := Set new.
	example := BPMethodExample new
		exampleName: 'test example';
		method: BPTestManuallyInstrumentedClass>>#methodA;
		yourself.