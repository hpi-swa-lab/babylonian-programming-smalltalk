tests
testActivateTracingGivenAnExample

	| result example |
	example := BPExample new.
	result := [BPTestInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: result example == example.  
	