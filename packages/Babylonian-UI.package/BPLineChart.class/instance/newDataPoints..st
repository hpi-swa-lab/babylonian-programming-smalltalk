visualization
newDataPoints: stringFilteredValueMorphs
	
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newDatapointFor: aTraceValue 
		centeredIn: (stringFilteredValueMorphs at: index)]