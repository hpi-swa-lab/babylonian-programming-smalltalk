tracing
traceAsyncNotifying: requestorBlock
	
	<bpRelevantMethod>
	"This will start tracing and immediately return. As soon as it is available, the
	tracer will report the trace information. This trace information is likely still 
	incomplete, but will be completed during the tracing."
	
	^ [self execute] bpTraceAsyncForExample: self notifying: requestorBlock