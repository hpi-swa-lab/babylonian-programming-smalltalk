running
runActiveExamples

	self activeExamples do: [:example | |promise exampleExecution|
		promise := Promise new.
		promise whenResolved: [:trace |
			BPTraces value at: trace example exampleReference put: trace].
		exampleExecution := [[example traceAsyncNotifying: [:intermediateTrace | promise resolveWith: intermediateTrace]]
			on: BPExampleExecutionInterrupted
			do: [:e | 
				"We need to remember this in order to terminate example processes
				whenever a trace leaves the registry."
				e trace exampleExecutionProcess: Processor activeProcess.
				promise resolveWith: e trace.
				Processor activeProcess suspend.]].
		exampleExecution forkAt: Processor userBackgroundPriority named: 'Execution of example ' , example exampleName].