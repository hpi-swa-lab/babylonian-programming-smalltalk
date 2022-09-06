private
installUIProcessTracing
		
	| tracer |
	tracer := BPTracer forExample: self.
	BPActiveTracer uiProcessTracer: tracer.
	trace := tracer intermediateTrace.
	self changed: #worldExampleTrace with: trace.
	Project current addDeferredUIMessage: [#bpInstrumented activateLayerInCurrentProcess].