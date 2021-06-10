tests
testActivateTracingGivenAnExample

	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: result example == example.  
	