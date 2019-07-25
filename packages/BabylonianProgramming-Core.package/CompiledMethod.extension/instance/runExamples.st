*BabylonianProgramming-Core
runExamples

	self bpActiveExamples do: [:example | |promise exampleExecution|
		promise := Promise new.
		promise whenResolved: [:trace |
			BPTraces value at: trace example exampleReference put: trace].
		exampleExecution := [[promise resolveWith: example trace]
			on: BPExampleExecutionInterrupted
			do: [:e | 
				promise resolveWith: e trace.
				Processor activeProcess suspend.]].
		exampleExecution forkAt: Processor userBackgroundPriority].
