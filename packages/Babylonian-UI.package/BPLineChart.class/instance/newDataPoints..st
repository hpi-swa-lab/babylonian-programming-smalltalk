visualization
newDataPoints: filteredValueMorphs
	
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newDatapointFor: aTraceValue 
		centeredIn: (filteredValueMorphs at: index)]