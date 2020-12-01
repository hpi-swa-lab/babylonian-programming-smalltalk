tests
testTracingOfExecutionResult
	
	| result |
	result := (BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndReplacementAndAssertions) bpExamples first trace.
	self assert: (result executionResult) equals: 4