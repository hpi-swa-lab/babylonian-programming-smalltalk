tracing
traceAssignment: aBlock previousValues: variablesAndValueTuples forProbe: aProbeId inContext: aContext
	
	| result |
	self checkForHaltAt: aProbeId.
	
	result := self traceBlock: aBlock forProbe: aProbeId.
	trace 
		traceAssignment: result
		previousValues: variablesAndValueTuples 
		forId: aProbeId 
		inContext: aContext.
		
	^ result