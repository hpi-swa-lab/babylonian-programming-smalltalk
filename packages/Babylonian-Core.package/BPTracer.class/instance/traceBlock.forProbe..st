private
traceBlock: aBlock forProbe: aProbeId
	
	^ [#bpInstrumented withLayerDo: (self wrapUserCode: aBlock)]
		on: Error 
		do: [:anError | 
			trace traceException: anError forId: aProbeId.
			anError signal]