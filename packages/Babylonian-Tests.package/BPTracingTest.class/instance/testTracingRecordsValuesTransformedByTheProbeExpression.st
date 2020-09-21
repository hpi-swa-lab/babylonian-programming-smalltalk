tests
testTracingRecordsValuesTransformedByTheProbeExpression
	
	| result example |
	example := BPExample new.
	result := [BPTestManuallyInstrumentedClass new methodC] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 10) notEmpty.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue.