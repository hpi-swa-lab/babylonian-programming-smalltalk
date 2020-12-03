tracing
traceToHaltAt: probeId
	"We do not care for the traceInformation as this is not intended to record anything but
	only to bring us to the probe as quickly as possible"
	
	| exampleExecution |
	exampleExecution := [[([self execute] bpTraceForExample: self andHaltAt: probeId)]
		on: BPExampleExecutionInterrupted
		do: [:anError | | methodContext process | 	
			methodContext := anError signalerContext findContextSuchThat: [:aContext | 
				aContext method reference = self method reference].
			process := Processor activeProcess.
			ToolSet default 
					debugProcess: process
					context: methodContext
					label: anError printString
					contents: nil
					fullView: true]].
	exampleExecution 
		forkAt: Processor userSchedulingPriority + 1
		named: 'Execution to halt of example ' , self exampleName