accessing
valuesForProbeId: aProbeIde

	^ self probes at: aProbeIde ifAbsent: [
		self exampleErrored 
			ifTrue: [{BPFailedTrace new}] 
			ifFalse: [#()]]