tests - tracing errors
testTracingTracesTheExceptionItself

	| result |
	result := (BPTestManuallyInstrumentedClass>>#methodWithProbeBeforeError) bpExamples first trace.
	self assert: result exampleErrored. 
	self assert: result recordedException notNil.
	self assert: (result recordedException isKindOf: ZeroDivide).