tests
testTheTracingReturnsTheExpressionValueAnyways

	| example methodResult |
	example := BPExample new.
	[methodResult := BPTestInstrumentedClass new methodA] bpTraceForExample: example.
	self assert: 2 equals: methodResult