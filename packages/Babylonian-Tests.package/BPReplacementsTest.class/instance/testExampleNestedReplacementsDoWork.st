tests
testExampleNestedReplacementsDoWork
	
	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndNestedReplacement.
	example := method bpExamples detect: [:e | e exampleName = 'some example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndNestedReplacement] bpTraceForExample: example.
	self assert: 4 equals: (result valuesForProbeId: 10) first tracedValue.
	
	example := method bpExamples detect: [:e | e exampleName = 'another example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndNestedReplacement] bpTraceForExample: example.
	self assert: 10 equals: (result valuesForProbeId: 10) first tracedValue.