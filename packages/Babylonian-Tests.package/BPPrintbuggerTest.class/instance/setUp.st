running
setUp
	
	printbugger := BPPrintbugger new.
	{
		(BPTestManuallyInstrumentedClass>>#methodAWithAssertionUsingExpressionResult).
		(BPTestManuallyInstrumentedClass>>#methodWithMultipleProbes)} do: [:aMethod | 
			aMethod removeProperty: #bpExamples ifAbsent: []].
	