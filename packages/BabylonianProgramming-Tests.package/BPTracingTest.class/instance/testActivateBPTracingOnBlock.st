tests
testActivateBPTracingOnBlock

	| result |
	result := [BPTestManuallyInstrumentedClass new methodA] bpTrace.
	self assert: result notNil.
	