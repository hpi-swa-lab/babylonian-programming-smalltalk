accessing
basicValuesFor: aTrace
	
	^ ((self probeMorph linkedProbes collect: [:aLinkedProbe | aTrace valuesForProbeId: aLinkedProbe id]) flatten)
		sorted: [:aTraceValue | aTraceValue chronologicalPosition] ascending