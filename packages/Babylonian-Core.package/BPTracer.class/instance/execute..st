as yet unclassified
execute: aBlock
	
	| s |
	s := Stopwatch new.
	s activate.
	
	aBlock 
		on: Error", Halt"
		do: [:e | 
			self halt.
			BPActiveTracer value traceException: e.
			BPExampleExecutionInterrupted signal: self completeTrace].

	s suspend.
	trace duration: s end duration