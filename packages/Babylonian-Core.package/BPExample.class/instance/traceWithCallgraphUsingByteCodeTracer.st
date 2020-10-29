tracing
traceWithCallgraphUsingByteCodeTracer
	
	| tracer |
	tracer := BPByteCodeCallgraphTracer new.
	BPByteCodeCallgraphTracer value: tracer during: [
		BPByteCodeCallgraphTracer customEvent: #bpExample data: self.
		self trace].
	^ tracer