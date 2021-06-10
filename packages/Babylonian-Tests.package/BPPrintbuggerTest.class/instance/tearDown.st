running
tearDown
	
	BPExamples value removeAll: BPExamples value examples.
	{
		(BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult).
		(BPTestManuallyInstrumentedClass>>#methodWithMultipleProbes)} do: [:aMethod | 
			aMethod removeProperty: #bpExamples ifAbsent: []].