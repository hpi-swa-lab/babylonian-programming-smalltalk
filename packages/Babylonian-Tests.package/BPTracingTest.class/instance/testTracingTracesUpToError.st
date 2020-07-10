tests - tracing errors
testTracingTracesUpToError

	| result |
	result := (BPTestManuallyInstrumentedClass>>#methodWithProbeBeforeError) bpExamples first trace.
	self assert: result exampleErrored. 
	self assert: 1 equals: (result valuesForProbeId: 10) size.
	self assert: 2 equals: (result valuesForProbeId: 10) first tracedValue.