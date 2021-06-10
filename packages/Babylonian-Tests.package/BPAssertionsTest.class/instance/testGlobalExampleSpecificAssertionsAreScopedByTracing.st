tests
testGlobalExampleSpecificAssertionsAreScopedByTracing
	
	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndAssertionWithGlobalName.
	example := method bpExamples detect: [:e | e exampleName = 'some example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacementAndAssertions] bpTraceForExample: example.
	self assert: true equals: (result resultsForAssertionId: 5) first tracedValue.
	
	example := (method bpExamples copyWithout: example) first.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacementAndAssertions] bpTraceForExample: example.
	self assert: result assertions isEmpty.