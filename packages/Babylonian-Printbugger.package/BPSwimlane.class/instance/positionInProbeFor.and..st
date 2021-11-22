private
positionInProbeFor: aTraceValue and: aBPExample

	^ ((aBPExample probes at: aTraceValue belongingAnnotationId) collect: [:aValue | aValue chronologicalPosition])
			indexOf: aTraceValue chronologicalPosition.