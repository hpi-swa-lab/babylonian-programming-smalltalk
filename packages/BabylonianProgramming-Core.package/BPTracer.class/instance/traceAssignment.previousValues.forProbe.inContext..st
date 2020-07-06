tracing
traceAssignment: aBlock previousValues: variablesAndValueTuples forProbe: aProbeId inContext: aContext

	| result |
	result := self traceBlock: aBlock forProbe: aProbeId.
	self trace 
		traceAssignment: result
		previousValues: variablesAndValueTuples 
		forId: aProbeId 
		inContext: aContext.
		
	^ result