tracing
traceInBackground

	| exampleExecution promise |
	traceInformation terminateTracingProcess.
	promise := Promise new.
	promise whenResolved: [:trace |
		Project current addDeferredUIMessage: [traceInformation trace: trace]].
	exampleExecution := [[self traceAsyncNotifying: [:intermediateTrace | promise resolveWith: intermediateTrace]]
		on: BPExampleExecutionInterrupted
		do: [:anError | 
			"We need to remember this in order to terminate example processes
			whenever a trace leaves the registry."
			anError trace exampleExecutionProcess: Processor activeProcess.
			promise resolveWith: anError trace.
			Processor activeProcess suspend.]].
	traceInformation tracingProcess: (exampleExecution 
		forkAt: Processor userSchedulingPriority 
		named: 'Execution of example ' , self exampleName) 