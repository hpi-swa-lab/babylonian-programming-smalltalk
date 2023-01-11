accessing
valuesForProbeId: aProbeId

	mutex critical: [
		^ self probes at: aProbeId ifAbsent: [
			self exampleErrored 
				ifTrue: [{BPFailedTrace new}] 
				ifFalse: [#()]]]