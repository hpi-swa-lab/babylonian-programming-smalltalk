tests - tracing errors
testTracingTracesAllErrorsInExampleExecution

	| result |
	result := (BPTestManuallyInstrumentedClass>>#methodWithErrorNotInProbe) bpExamples first trace.
	self assert: result exampleErrored. 
	self assert: 1 equals: (result valuesForProbeId: 10) size.