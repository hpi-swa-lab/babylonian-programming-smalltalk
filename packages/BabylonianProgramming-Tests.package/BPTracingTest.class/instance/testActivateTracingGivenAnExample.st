tests
testActivateTracingGivenAnExample

	| result example |
	example := BPExample new.
	result := [BPTestManuallyInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: result example == example.  
	