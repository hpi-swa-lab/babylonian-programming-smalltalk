tracing
trace: aSymbol
	
	aSymbol caseOf: {
		[#none] ->  [^ traceInformation trace: ([self execute] bpTraceForExample: self)].
		[#byteCode] -> [ | tracer |
			tracer := BPByteCodeCallgraphTracer new.
			tracer customEvent: #bpExample data: self.
			traceInformation trace: (BPByteCodeCallgraphTracer value: tracer during: [[self execute] bpTraceForExample: self]).
			traceInformation callgraphTracer: tracer.
			^ traceInformation]}