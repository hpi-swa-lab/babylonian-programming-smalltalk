tracing
traceToHaltAt: probeId
	
	"We do not care for the traceInformation as this is not intended to record anything but
	only to bring us to the probe as quickly as possible"
	
	| exampleExecution |
	exampleExecution := [[([self execute] bpTraceForExample: self andHaltAt: probeId)]
		on: BPExampleExecutionInterrupted
		do: [:anError | | methodContext process traceMethodReferences |
			traceMethodReferences := {
				(Object>>#bpTrace:forProbe:inContext:) reference . 
				(Object>>#bpTrace:through:forProbe:inContext:) reference}.
			methodContext := anError signalerContext findContextSuchThat: [:aContext | 
				(traceMethodReferences includes: aContext method reference) and: [
					aContext isExecutingBlock not]].
			process := Processor activeProcess.
			ToolSet default 
					debugProcess: process
					context: methodContext sender
					label: anError printString
					contents: nil
					fullView: true]].
	exampleExecution 
		forkAt: Processor userSchedulingPriority + 1
		named: 'Execution to halt of example ' , self exampleName.