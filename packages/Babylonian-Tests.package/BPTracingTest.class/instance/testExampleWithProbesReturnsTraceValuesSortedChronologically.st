tests - asynchronous tracing
testExampleWithProbesReturnsTraceValuesSortedChronologically

	| result example |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodWithMultipleProbes] bpTraceForExample: example.
	self assert:(result traceValues collect: [:aTraceValue | aTraceValue tracedValue]) equals: {1. 2. 2. 4. 3. 6} asOrderedCollection.
	self assert: (result traceValues collect: [:aTraceValue | aTraceValue chronologicalPosition]) equals: {0. 1. 2. 3. 4. 5} asOrderedCollection.