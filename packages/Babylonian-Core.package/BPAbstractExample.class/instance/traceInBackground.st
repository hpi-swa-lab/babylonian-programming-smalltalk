tracing
traceInBackground
	
	<bpRelevantMethod>
	| traceAndProcess |
	self ensureTerminatedProcess.
	
	traceAndProcess := [self executeSynchronously] bpTraceInBackgroundForExample: self.
	self traceInformation 
		trace: traceAndProcess first;
		tracingProcess: traceAndProcess second.