running
initExample1WithMethodWithMultipleProbes
	
	example1 := (BPTestManuallyInstrumentedClass>>#methodWithMultipleProbes) bpExamples first.
	[BPTestManuallyInstrumentedClass new methodWithMultipleProbes] bpTraceForExample: example1.

	BPExamples value add: example1.
	
	"Force update notifications"
	example1 isActive: true.
	example1 changed: #exampleIsActive with: self.
	
	"Activate that probes have trace values"
	example1 trace.