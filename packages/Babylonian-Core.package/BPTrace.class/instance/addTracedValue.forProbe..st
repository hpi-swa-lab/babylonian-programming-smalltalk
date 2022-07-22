private
addTracedValue: aTraceValue forProbe: aProbeId

	(self probes at: aProbeId ifAbsentPut: [OrderedCollection new]) add: aTraceValue.
	self addChronologicalPositionTo: aTraceValue forAnnotation: aProbeId.