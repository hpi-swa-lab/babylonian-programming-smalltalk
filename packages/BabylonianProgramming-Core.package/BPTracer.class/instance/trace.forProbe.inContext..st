tracing
trace: aBlock forProbe: aProbeId inContext: aContext

	| result |
	result := self traceBlock: aBlock forProbe: aProbeId.
	self trace 
		trace: result
		forId: aProbeId 
		inContext: aContext.
		
	^ result