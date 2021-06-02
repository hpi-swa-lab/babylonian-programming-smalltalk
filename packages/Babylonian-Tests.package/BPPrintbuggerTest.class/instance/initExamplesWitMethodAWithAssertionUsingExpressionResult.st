running
initExamplesWitMethodAWithAssertionUsingExpressionResult
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples first.
	example2 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples second.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example1.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example2.

	BPExamples value add: example1.
	BPExamples value add: example2.
	
	"Force update notifications"
	example1 changed: #exampleIsActive with: self.
	example2 changed: #exampleIsActive with: self.