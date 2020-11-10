process control
terminateTracingProcess
	
	self flag: #fixme. "We need to disable the bytecode tracer for the process before terminating it, otherwise termination is unsuccessful and results in image hangup. However, a better solution would be to investigate why processes with active tracing cannot be terminated normally."
	self tracingProcess ifNotNil: [:p | BPByteCodeCallgraphTracer value: nil during: [p terminate] inProcess: p]