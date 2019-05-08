tests
testExampleSpecificReplacementsAreScopedByTracing

	| example result method |
	method := BPTestInstrumentedClass>>#methodAWithExamplesAndReplacement.
	example := method bpExamples first.
	result := [BPTestInstrumentedClass new methodAWithExamplesAndReplacement] bpTraceForExample: example.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue.
	
	example := method bpExamples second.
	result := [BPTestInstrumentedClass new methodAWithExamplesAndReplacement] bpTraceForExample: example.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue.