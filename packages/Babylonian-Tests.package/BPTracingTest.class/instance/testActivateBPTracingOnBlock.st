tests
testActivateBPTracingOnBlock

	| result |
	result := [BPTestManuallyInstrumentedClass new methodA] bpTraceForExample: nil.
	self assert: result notNil.
	