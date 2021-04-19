visualization
newRectangles: filteredValueMorphs
	
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newRectangleFor: aTraceValue 
		centeredIn: (filteredValueMorphs at: index)]