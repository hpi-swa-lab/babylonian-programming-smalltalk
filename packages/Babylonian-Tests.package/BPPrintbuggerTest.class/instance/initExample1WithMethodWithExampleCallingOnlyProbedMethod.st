running
initExample1WithMethodWithExampleCallingOnlyProbedMethod
	
	example1 := (BPTestExamplesClass>>#methodWithExampleCallingOnlyProbedMethod) bpExamples first.
	
	"Force update notifications"
	example1 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.