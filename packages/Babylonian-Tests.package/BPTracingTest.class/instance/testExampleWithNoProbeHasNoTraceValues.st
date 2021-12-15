tests - asynchronous tracing
testExampleWithNoProbeHasNoTraceValues

	
	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new actualMethodWithAReceiver] bpTraceForExample: example.
	self assert: (result traceValues) isEmpty.
	self assert: 0 equals: result chronologicallyTrackedTraceValuesCount. 