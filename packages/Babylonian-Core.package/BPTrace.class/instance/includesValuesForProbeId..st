testing
includesValuesForProbeId: aProbeId

	^ (self probes at: aProbeId ifAbsent: [#()]) notEmpty