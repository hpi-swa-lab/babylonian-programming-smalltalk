private
positionInProbeFor: aTraceValue and: aBPExample
	
	^ ((aBPExample probes at: aTraceValue belongingProbeId) collect: [:aValue | aValue chronologicalPosition])
			indexOf: aTraceValue chronologicalPosition.