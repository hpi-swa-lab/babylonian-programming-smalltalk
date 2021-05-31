tests
testShows2SwimlanesFor2ActiveExamples
	
	| example1 example2 |
	example1 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples first.
	example2 := (BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult) bpExamples second.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example1.
	[BPTestManuallyInstrumentedClass new methodAWithAssertionUsingExpressionResult] bpTraceForExample: example2.
	example1 isActive: false.
	example2 isActive: false.
	example1 isActive: true.
	example2 isActive: true.
	self assert: (BPExamples value activeExamples size) equals: 2.
	