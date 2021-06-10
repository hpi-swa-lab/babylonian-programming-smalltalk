tests
testTracingRecordsDuringProbeExpression
	
	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodWithSelfCallInExpression] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 11) notEmpty.
	self assert: 'hallo b' equals: (result valuesForProbeId: 11) first tracedValue.