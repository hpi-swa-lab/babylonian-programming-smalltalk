running
initExample2WithMethodBInstrumented
	
	example2 := (BPTestManuallyInstrumentedClass>>#methodBInstrumented) bpExamples first.
	
	"Force update notifications"
	example2 isActive: true.
	
	"Activate that probes have trace values"
	example2 trace.