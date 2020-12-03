tests
testTracingRecordsValuesInReplacementsBaseCase

	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndNestedProbeInReplacement] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 10) notEmpty.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue