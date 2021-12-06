accessing
valuesForProbeId: aProbeId

	^ self probes at: aProbeId ifAbsent: [
		self exampleErrored 
			ifTrue: [{BPFailedTrace new}] 
			ifFalse: [#()]]