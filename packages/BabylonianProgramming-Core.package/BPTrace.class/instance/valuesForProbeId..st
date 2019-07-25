accessing
valuesForProbeId: aProbeIde

	^ self probes at: aProbeIde 
		ifAbsent: [self exampleErrored 
			ifTrue: [{BPTraceValue new tracedValue: 'error during execution'; yourself}] 
			ifFalse: [#()]]