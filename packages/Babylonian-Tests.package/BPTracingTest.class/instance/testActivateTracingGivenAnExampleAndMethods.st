tests
testActivateTracingGivenAnExampleAndMethods

	| result example |
	example := BPExample new.
	result := [BPTestManuallyInstrumentedClass new methodACallingB] bpTraceForExample: example.
	self assert: 1 equals: (result valuesForProbeId: 10) size.
	self assert: 1 equals: (result valuesForProbeId: 11) size.