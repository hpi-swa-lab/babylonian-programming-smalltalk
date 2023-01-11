tracing
traceInBackground
	
	<bpRelevantMethod>
	| traceAndProcess |
	self ensureTerminatedProcess.
	
	traceAndProcess := [self execute] bpTraceInBackgroundForExample: self.
	self traceInformation 
		trace: traceAndProcess first;
		tracingProcess: traceAndProcess second.