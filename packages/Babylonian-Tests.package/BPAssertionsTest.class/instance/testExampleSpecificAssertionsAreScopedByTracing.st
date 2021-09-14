tests
testExampleSpecificAssertionsAreScopedByTracing
	
	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndReplacementAndAssertions.
	example := method bpExamples detect: [:e | e exampleName = 'some example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacementAndAssertions] bpTraceForExample: example.
	self assert: true equals: (result resultsForAssertionId: 5) first tracedValue.
	
	example := method bpExamples detect: [:e | e exampleName = 'another example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacementAndAssertions] bpTraceForExample: example.
	self assert: result assertions isEmpty.