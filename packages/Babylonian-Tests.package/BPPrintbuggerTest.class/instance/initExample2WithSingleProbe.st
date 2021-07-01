running
initExample2WithSingleProbe
	
	example2 := (BPTestExamplesClass>>#methodWithSingleProbe) bpExamples first.
	
	"Force update notifications"
	example2 isActive: true.
	
	"Activate that probes have trace values"
	example2 trace.