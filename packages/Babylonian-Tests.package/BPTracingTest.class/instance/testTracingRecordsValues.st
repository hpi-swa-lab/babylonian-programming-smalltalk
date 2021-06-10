tests
testTracingRecordsValues

	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 10) notEmpty.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue.