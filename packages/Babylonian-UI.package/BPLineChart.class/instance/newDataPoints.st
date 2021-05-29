visualization
newDataPoints
	
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newDatapointFor: aTraceValue at: index]