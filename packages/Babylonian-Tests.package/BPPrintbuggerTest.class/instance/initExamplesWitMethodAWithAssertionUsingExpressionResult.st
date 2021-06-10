running
initExamplesWitMethodAWithAssertionUsingExpressionResult
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples first.
	example2 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples second.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example1.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example2.
	
	BPExamples value add: example1.
	BPExamples value add: example2.
	
	"Force update notifications"
	example1 isActive: false.
	example2 isActive: false.
	example1 isActive: true.
	example2 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.
	example2 trace.