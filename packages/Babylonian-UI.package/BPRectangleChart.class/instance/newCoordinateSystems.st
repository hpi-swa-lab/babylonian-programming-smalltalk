visualization
newCoordinateSystems
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newCoordinateSystemFor: aTraceValue at: index]