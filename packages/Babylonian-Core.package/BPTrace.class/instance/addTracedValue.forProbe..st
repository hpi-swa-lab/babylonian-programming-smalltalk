private
addTracedValue: aTraceValue forProbe: aProbeId
	
	(self probes at: aProbeId ifAbsentPut: [OrderedCollection new]) add: aTraceValue.
	BPByteCodeCallgraphTracer customEvent: #bpProbeHit data: aProbeId -> aTraceValue