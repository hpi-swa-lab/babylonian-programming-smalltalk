tests
testTracingRecordsASerializedStack

	| result example |
	example := BPExample new.
	result := [BPTestInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 10) notEmpty.
	self assert: #methodA equals: (result valuesForProbeId: 10) first stack first second.