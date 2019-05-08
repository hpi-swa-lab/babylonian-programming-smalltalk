recording
addTracedValue: aTraceValue for: aProbeId

	(self probes at: aProbeId ifAbsentPut: [OrderedCollection new]) add: aTraceValue