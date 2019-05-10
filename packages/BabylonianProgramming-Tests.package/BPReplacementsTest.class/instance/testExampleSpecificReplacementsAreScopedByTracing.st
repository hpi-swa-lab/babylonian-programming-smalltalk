tests
testExampleSpecificReplacementsAreScopedByTracing

	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndReplacement.
	example := method bpExamples first.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacement] bpTraceForExample: example.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue.
	
	example := method bpExamples second.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacement] bpTraceForExample: example.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue.