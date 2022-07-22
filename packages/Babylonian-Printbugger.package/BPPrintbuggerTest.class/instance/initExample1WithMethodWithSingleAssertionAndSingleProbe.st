running
initExample1WithMethodWithSingleAssertionAndSingleProbe

	example1 := (BPTestExamplesClass>>#methodWithSingleAssertionAndSingleProbe) bpExamples first.
	
	"Force update notifications"
	example1 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.