tests
testActivateTracingGivenAnExampleAndMethods

	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodACallingB] bpTraceForExample: example.
	self assert: 1 equals: (result valuesForProbeId: 10) size.
	self assert: 1 equals: (result valuesForProbeId: 11) size.