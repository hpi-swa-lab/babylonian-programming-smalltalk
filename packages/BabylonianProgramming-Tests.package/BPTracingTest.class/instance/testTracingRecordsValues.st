tests
testTracingRecordsValues

	| result example |
	example := BPExample new.
	result := [BPTestInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 10) notEmpty.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue.