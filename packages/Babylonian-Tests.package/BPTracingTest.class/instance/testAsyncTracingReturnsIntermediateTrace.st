tests - asynchronous tracing
testAsyncTracingReturnsIntermediateTrace

	[BPTestManuallyInstrumentedClass new methodA] 
		bpTraceAsyncForExample: nil
		notifying: [:t | self assert: t hasTraceCompleted not].
	