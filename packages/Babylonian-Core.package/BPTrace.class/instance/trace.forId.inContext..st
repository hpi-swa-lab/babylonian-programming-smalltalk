recording
trace: anObject forId: probeId inContext: aContext

	self 
		addTracedValue: (self newTracedValue: anObject expression: '' stackFrom: aContext)
		forProbe: probeId.