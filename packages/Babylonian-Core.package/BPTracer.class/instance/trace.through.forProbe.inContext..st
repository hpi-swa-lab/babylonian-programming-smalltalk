tracing
trace: aBlock through: expressionProbe forProbe: aProbeId inContext: aContext
	
	| result |
	result := self traceBlock: aBlock forProbe: aProbeId.
	trace 
		trace: (expressionProbe cull: result)
		forId: aProbeId 
		inContext: aContext.
		
	^ result