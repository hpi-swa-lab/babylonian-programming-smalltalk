tests
testExampleSpecificReplacementsAreScopedByTracing
	
	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndReplacement.
	example := method bpExamples detect: [:e | e exampleName = 'some example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacement] bpTraceForExample: example.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue.
	
	example := (method bpExamples copyWithout: example) first.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacement] bpTraceForExample: example.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue.