private
installUIProcessTracing
		
	| tracer |
	tracer := BPTracer forExample: self.
	BPActiveTracer uiProcessTracer: tracer.
	trace := tracer intermediateTrace.
	trace hasTraceCompleted: false.
	self changed: #worldExampleTrace with: trace.
	Project current addDeferredUIMessage: [#bpInstrumented activateLayerInCurrentProcess].