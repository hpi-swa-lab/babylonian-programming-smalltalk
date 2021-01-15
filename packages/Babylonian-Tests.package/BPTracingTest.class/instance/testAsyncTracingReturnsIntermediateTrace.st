tests - asynchronous tracing
testAsyncTracingReturnsIntermediateTrace

	[BPTestManuallyInstrumentedClass new methodA] 
		bpTraceAsyncForExample: nil
		notifying: [:tuple | self assert: tuple first hasTraceCompleted not].
	