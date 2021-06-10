tracing
trace: aBlock through: expressionProbe forProbe: aProbeId inContext: aContext
	
	<bpRelevantMethod>
	| result |
	self checkForHaltAt: aProbeId.
	
	result := self traceBlock: aBlock forProbe: aProbeId.
	trace 
		trace: (#bpInstrumented withLayerDo: [expressionProbe cull: result])
		forId: aProbeId 
		inContext: aContext.
		
	^ result