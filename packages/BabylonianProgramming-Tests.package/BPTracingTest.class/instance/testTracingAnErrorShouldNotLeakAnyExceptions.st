tests - tracing errors
testTracingAnErrorShouldNotLeakAnyExceptions

	self 
		shouldnt: [(BPTestManuallyInstrumentedClass>>#methodWithError) bpExamples first trace]
		raise: BPExampleExecutionInterrupted , ZeroDivide.