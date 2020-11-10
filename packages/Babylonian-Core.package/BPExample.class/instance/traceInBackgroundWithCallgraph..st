tracing
traceInBackgroundWithCallgraph: aSymbol
	
	| exampleExecution promise |
	traceInformation terminateTracingProcess.
	promise := Promise new.
	promise whenResolved: [:traceAndCallgraphTracer |
		Project current addDeferredUIMessage: [traceInformation 
			trace: traceAndCallgraphTracer first;
			callgraphTracer: traceAndCallgraphTracer second]].
	exampleExecution := [[self traceAsyncNotifying: [:intermediateTraceAndCallgraphTracer | promise resolveWith: intermediateTraceAndCallgraphTracer] withCallgraph: aSymbol]
		on: BPExampleExecutionInterrupted
		do: [:e | 
			"We need to remember this in order to terminate example processes
			whenever a trace leaves the registry."
			e trace exampleExecutionProcess: Processor activeProcess.
			promise resolveWith: e trace.
			Processor activeProcess suspend.]].
	traceInformation tracingProcess: (exampleExecution 
		forkAt: Processor userSchedulingPriority 
		named: 'Execution of example ' , self exampleName) 