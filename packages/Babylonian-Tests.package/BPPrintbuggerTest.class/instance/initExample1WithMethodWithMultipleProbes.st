running
initExample1WithMethodWithMultipleProbes
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodWithMultipleProbes) bpExamples first.
	
	"Force update notifications"
	example1 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.