tests - tracing errors
testTracingAnErrorShouldNotLeakAnyExceptions

	self 
		shouldnt: [(BPTestManuallyInstrumentedClass>>#methodWithError) bpExamples first trace]
		raise: ZeroDivide.
		
	self
		should: [(BPTestManuallyInstrumentedClass>>#methodWithError) bpExamples first trace]
		raise: BPExampleExecutionInterrupted.