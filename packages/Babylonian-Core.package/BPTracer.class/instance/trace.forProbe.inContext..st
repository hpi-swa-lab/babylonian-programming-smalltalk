tracing
trace: aBlock forProbe: aProbeId inContext: aContext

	| result |
	result := self traceBlock: aBlock forProbe: aProbeId.
	trace 
		trace: result
		forId: aProbeId 
		inContext: aContext.
		
	^ result