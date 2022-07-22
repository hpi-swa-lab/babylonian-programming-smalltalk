tests - asynchronous tracing
testExampleWithProbesCountsTraceValuesCorrectly

	
	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodWithMultipleProbes] bpTraceForExample: example.
	self assert: (result traceValues size) equals: result chronologicallyTrackedTraceValuesCount.
	self assert: 6 equals: result chronologicallyTrackedTraceValuesCount.