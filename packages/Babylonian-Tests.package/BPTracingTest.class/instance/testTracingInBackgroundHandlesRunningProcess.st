tests - tracing by examples
testTracingInBackgroundHandlesRunningProcess

	| example process1 traceAndProcess |
	example := BPScriptExample new
		method: nil;
		script: '2 + 3';
		yourself.
	traceAndProcess := example traceInBackground.
	process1 := example traceInformation tracingProcess.
	traceAndProcess := example traceInBackground.
	"assert no error due to race conditions, also:"
	self assert: process1 isTerminated.