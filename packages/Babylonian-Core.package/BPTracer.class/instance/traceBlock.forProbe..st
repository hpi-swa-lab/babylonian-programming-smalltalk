private
traceBlock: aBlock forProbe: aProbeId
	
	^ [#bpInstrumented withLayerDo: aBlock]
		on: Error 
		do: [:anError | 
			trace traceException: anError forId: aProbeId.
			anError signal]