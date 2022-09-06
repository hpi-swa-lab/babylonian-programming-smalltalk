private - ui
traceControlButtonClicked

	self example toggleTracing.
	self example isTracing 
		ifTrue: [traceControlButton labelString: 'stop tracing']
		ifFalse: [traceControlButton labelString: 'start tracing'].