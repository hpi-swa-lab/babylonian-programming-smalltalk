tests
testProfilingTracingRecordsTimesToRun

	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodWithProfilingProbe] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 123) notEmpty.
	self assert: 3 equals: (result valuesForProbeId: 123) size.