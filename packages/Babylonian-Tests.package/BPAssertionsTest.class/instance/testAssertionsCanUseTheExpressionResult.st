tests
testAssertionsCanUseTheExpressionResult
	
	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithAssertionWithNonBooleanResult.
	example := method bpExamples detect: [:e | e exampleName = 'some example'].
	result := [BPTestManuallyInstrumentedClass new methodAWithAssertionWithNonBooleanResult] bpTraceForExample: example.
	self assert: false equals: (result resultsForAssertionId: 5) first tracedValue.