tests
testTheTracingReturnsTheExpressionValueAnyways

	| example methodResult |
	example := BPMethodExample new.
	[methodResult := BPTestManuallyInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: 2 equals: methodResult.