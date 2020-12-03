tests - tracing errors
testTracingAnErrorRecordsTheStack

	| result |
	result := (BPTestManuallyInstrumentedClass>>#methodWithError) bpExamples first trace.
	self assert: result exampleErrored. 
	self assert: 1 equals: (result valuesForProbeId: 10) size.
	self assert: 'error during execution' equals: (result valuesForProbeId: 10) first tracedValue.
	self assert: (result valuesForProbeId: 10) first traceHasFailedBefore