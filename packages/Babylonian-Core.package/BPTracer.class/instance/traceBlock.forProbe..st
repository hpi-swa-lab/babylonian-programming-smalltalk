private
traceBlock: aBlock forProbe: aProbeId

	^ [#bpInstrumented withLayerDo: aBlock]
		on: Error 
		do: [:e | 
			self trace traceException: e forId: aProbeId.
			e signal].