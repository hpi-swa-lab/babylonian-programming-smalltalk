tests
testExampleNestedReplacementsDoWork

	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndNestedReplacement.
	example := method bpExamples first.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndNestedReplacement] bpTraceForExample: example.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue.
	
	example := method bpExamples second.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndNestedReplacement] bpTraceForExample: example.
	self assert: 10 equals: (result valuesForProbeId: 10) first tracedValue