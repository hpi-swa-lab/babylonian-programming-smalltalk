tracing
trace: aValue forProbe: aProbeId inContext: aContext

	self trace 
		trace: aValue 
		forId: aProbeId 
		inContext: aContext.
		
	^ aValue