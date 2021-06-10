private
addTracedValue: aTraceValue forProbe: aProbeId
	
	(self probes at: aProbeId ifAbsentPut: [OrderedCollection new]) add: aTraceValue.
	aTraceValue chronologicalPosition: probesTraceValuesCount.
	probesTraceValuesCount := probesTraceValuesCount + 1.
	aTraceValue belongingProbeId: aProbeId.