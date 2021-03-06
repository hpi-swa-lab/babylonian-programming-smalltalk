tracing
traceInBackground
	
	<bpRelevantMethod>
	| exampleExecution promise |
	self ensureTerminatedProcess.
	promise := Promise new.
	promise whenResolved: [:trace |
		Project current addDeferredUIMessage: [traceInformation trace: trace]].
	exampleExecution := [[
		self traceAsyncNotifying: [:intermediateTrace | 
			promise resolveWith: intermediateTrace]]
				on: BPExampleExecutionInterrupted
				do: [:e | 
					"We need to remember this in order to terminate example processes
					whenever a trace leaves the registry."
					e trace exampleExecutionProcess: Processor activeProcess.
					promise resolveWith: e trace.]].
	traceInformation tracingProcess: (exampleExecution 
		forkAt: Processor userSchedulingPriority 
		named: 'Execution of example ' , self exampleName) 