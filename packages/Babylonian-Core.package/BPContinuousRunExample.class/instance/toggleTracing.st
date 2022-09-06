tracing
toggleTracing

	self isTracing
		ifTrue: [self stopTracing]
		ifFalse: [self startTracing]