*Babylonian-Core
bpTraceInBackgroundForExample: anExample
	
	<bpRelevantMethod>
	| tracer traceProcess |
	tracer := BPTracer forExample: anExample.
	traceProcess := [[self bpTraceWith: tracer] 
		on: BPExampleExecutionInterrupted
		do: [:e | 
			"We need to remember this in order to debug the error"
			e trace erroredProcess: Processor activeProcess.]] newProcess.
	traceProcess 
		priority: Processor userSchedulingPriority;
		name: 'Execution of example ' , anExample exampleName;
		propagateCSLayers; propagateDynamicVariables.
	Project current addDeferredUIMessage: ["to delay process start"
		traceProcess isTerminated ifFalse: [
			"to guard against the process having been
			terminated due to a subsequent re-execution of 
			the example"
			traceProcess resume]].
	^ {tracer intermediateTrace . traceProcess}
	