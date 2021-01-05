tracing
traceAsyncNotifying: requestorBlock withCallgraph: aSymbol
	
	aSymbol caseOf: {
		[#none] ->  [^ [self execute] bpTraceAsyncForExample: self notifying: requestorBlock].
		[#byteCode] -> [ | callgraphTracer result |
			callgraphTracer := BPByteCodeCallgraphTracer new.
			callgraphTracer customEvent: #bpExample data: self.
			BPByteCodeCallgraphTracer value: callgraphTracer during: [
				[self execute] bpTraceAsyncForExample: self notifying: [:tuple | result := tuple]].
			requestorBlock value: {result first . callgraphTracer}]}