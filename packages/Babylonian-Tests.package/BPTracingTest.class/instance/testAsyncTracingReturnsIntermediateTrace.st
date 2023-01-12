tests - asynchronous tracing
testAsyncTracingReturnsIntermediateTrace

	| traceAndProcess |
	traceAndProcess := [BPTestManuallyInstrumentedClass new methodA]
		bpTraceInBackgroundForExample: BPScriptExample new.
	self assert: traceAndProcess first hasTraceCompleted not.
	