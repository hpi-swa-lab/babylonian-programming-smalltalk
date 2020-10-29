private
traceBlock: aBlock forProbe: aProbeId
	
	^ [#bpInstrumented withLayerDo: (self wrapUserCode: aBlock)]
		on: Error 
		do: [:e | 
			trace traceException: e forId: aProbeId.
			e signal].