running
initExamplesWithoutAnnotations

	example1 := (BPTestExamplesClass>>#methodWithExamples) bpExamples first.
	example2 := (BPTestExamplesClass>>#methodWithExamples) bpExamples second.
	
	"Force update notifications"
	example1 isActive: true.
	example2 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.
	example2 trace.