private - ui
traceControlButtonClicked

	self example toggleTracing.
	self example isTracing
		ifTrue: [traceControlButton labelString: self stopTracingLabel]
		ifFalse: [traceControlButton labelString: self startTracingLabel].