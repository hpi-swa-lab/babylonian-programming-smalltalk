testing
includesValuesForProbeId: aProbeId

	^ mutex critical: [(self probes at: aProbeId ifAbsent: [#()]) notEmpty]