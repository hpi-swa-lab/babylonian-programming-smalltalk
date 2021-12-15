running
initExample1WithMethodWithMultipleAssertions

	example1 := (BPTestExamplesClass>>#methodWithMultipleAssertions) bpExamples first.
	
	"Force update notifications"
	example1 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.