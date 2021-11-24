running
initExamplesWithoutAnnotations

	example1 := (BPTestExamplesClass>>#methodWithScriptExamples) bpExamples first.
	example2 := (BPTestExamplesClass>>#methodWithScriptExamples) bpExamples second.
	
	"Force update notifications"
	example1 isActive: true.
	example2 isActive: true.
	
	"Activate that probes have trace values"
	example1 trace.
	example2 trace.