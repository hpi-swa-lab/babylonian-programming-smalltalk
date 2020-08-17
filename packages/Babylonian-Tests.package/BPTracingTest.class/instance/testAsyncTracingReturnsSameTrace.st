tests - asynchronous tracing
testAsyncTracingReturnsSameTrace

	| trace resultTrace |
	resultTrace := [BPTestManuallyInstrumentedClass new methodA] 
		bpTraceAsyncForExample: nil
		notifying: [:t | trace := t].
	self assert: trace == resultTrace.