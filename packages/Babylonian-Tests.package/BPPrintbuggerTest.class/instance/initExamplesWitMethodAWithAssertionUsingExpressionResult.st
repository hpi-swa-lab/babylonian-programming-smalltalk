running
initExamplesWitMethodAWithAssertionUsingExpressionResult
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples first.
	example2 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples second.
	
	"Force update notifications"
	example1 isActive: true.
	example2 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.
	example2 trace.