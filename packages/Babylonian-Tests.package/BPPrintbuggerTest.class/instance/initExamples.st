running
initExamples
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples first.
	example2 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples second.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example1.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example2.