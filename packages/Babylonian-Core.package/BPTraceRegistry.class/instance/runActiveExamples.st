running
runActiveExamples

	processes do: [:p | p terminate]; removeAll.
	self haltOnce.
	self activeExamples do: [:example | |promise exampleExecution|
		promise := Promise new.
		promise whenResolved: [:trace |
			Project current addDeferredUIMessage: [BPTraces value at: trace example exampleReference put: trace]].
		exampleExecution := [[example traceAsyncNotifying: [:intermediateTrace | promise resolveWith: intermediateTrace]]
			on: BPExampleExecutionInterrupted
			do: [:e | 
				"We need to remember this in order to terminate example processes
				whenever a trace leaves the registry."
				e trace exampleExecutionProcess: Processor activeProcess.
				promise resolveWith: e trace.
				Processor activeProcess suspend.]].
		processes add: (exampleExecution 
			forkAt: Processor userSchedulingPriority
			named: 'Execution of example ' , example exampleName)].