tests
testTracingRecordsValuesTransformedByTheProbeExpression
	
	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodC] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 10) notEmpty.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue