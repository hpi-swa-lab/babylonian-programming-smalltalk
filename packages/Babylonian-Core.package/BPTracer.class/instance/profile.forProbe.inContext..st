tracing
profile: aBlock forProbe: probeId inContext: aContext

	| result timeToRun |
	timeToRun := [result := aBlock value] timeToRun.
	trace 
		trace: timeToRun
		forId: probeId 
		inContext: aContext.
	^ result