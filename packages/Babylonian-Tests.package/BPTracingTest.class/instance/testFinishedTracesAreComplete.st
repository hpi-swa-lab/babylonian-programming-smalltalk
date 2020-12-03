tests
testFinishedTracesAreComplete

	| result |
	result := [BPTestManuallyInstrumentedClass new methodA] bpTraceForExample: nil.
	self assert: result hasTraceCompleted
	