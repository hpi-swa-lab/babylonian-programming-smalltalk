tracing
trace: aBlock forProbe: aProbeId inContext: aContext

	| result |
	result := [#bpInstrumented withLayerDo: aBlock]
		on: Error 
		do: [:e | 
			self trace traceException: e forId: aProbeId.
			e signal].
	self trace 
		trace: result
		forId: aProbeId 
		inContext: aContext.
		
	^ result