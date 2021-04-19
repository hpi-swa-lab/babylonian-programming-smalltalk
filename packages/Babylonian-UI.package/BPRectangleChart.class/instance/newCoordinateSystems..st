visualization
newCoordinateSystems: filteredValueMorphs
	
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newCoordinateSystemFor: aTraceValue 
		centeredIn: (filteredValueMorphs at: index)]