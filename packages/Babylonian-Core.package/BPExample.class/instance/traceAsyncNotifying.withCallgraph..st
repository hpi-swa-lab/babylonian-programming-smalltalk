tracing
traceAsyncNotifying: requestorBlock withCallgraph: aSymbol
	
	"This will start tracing and immediately return. As soon as it is available, the
	tracer will report the trace information. This trace information is likely still 
	incomplete, but will be completed during the tracing."
	aSymbol caseOf: {
		[#none] ->  [^ [self execute] bpTraceAsyncForExample: self notifying: requestorBlock].
		[#byteCode] -> [ | callgraphTracer result |
			callgraphTracer := BPByteCodeCallgraphTracer new.
			callgraphTracer customEvent: #bpExample data: self.
			BPByteCodeCallgraphTracer value: callgraphTracer during: [
				[self execute] bpTraceAsyncForExample: self notifying: [:tuple | result := tuple]].
			requestorBlock value: {result first . callgraphTracer}]}