tracing
trace: aBlock forProbe: aProbeId inContext: aContext

	| result |
	result := aBlock 
		on: Error 
		do: [:e | 
			self trace traceException: e forId: aProbeId.
			BPExampleExecutionInterrupted signal].
	self trace 
		trace: result
		forId: aProbeId 
		inContext: aContext.
		
	^ result