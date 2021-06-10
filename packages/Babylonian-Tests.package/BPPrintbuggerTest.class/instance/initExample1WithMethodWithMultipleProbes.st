running
initExample1WithMethodWithMultipleProbes
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodWithMultipleProbes) bpExamples first.
	[BPTestManuallyInstrumentedClass new methodWithMultipleProbes] bpTraceForExample: example1.
	
	BPExamples value add: example1.
	
	"Force update notifications"
	example1 isActive: false.
	example1 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.