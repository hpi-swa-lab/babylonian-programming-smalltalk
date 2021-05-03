tests - asynchronous tracing
testAsyncTracingReturnsSameTrace
	
	| trace resultTrace |
	resultTrace := [BPTestManuallyInstrumentedClass new methodA] 
		bpTraceAsyncForExample: nil
		notifying: [:tuple | trace := tuple first].
	self assert: trace == resultTrace.