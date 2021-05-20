private
addTracedValue: aTraceValue forProbe: aProbeId
	
	
	(self probes at: aProbeId ifAbsentPut: [OrderedCollection new]) add: aTraceValue.
	aTraceValue chronologicalPosition: self probesTraceValuesCount-1.