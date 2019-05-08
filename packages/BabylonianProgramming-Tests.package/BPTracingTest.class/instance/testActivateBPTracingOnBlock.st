tests
testActivateBPTracingOnBlock

	| result |
	result := [BPTestInstrumentedClass new methodA] bpTrace.
	self assert: result notNil 
	