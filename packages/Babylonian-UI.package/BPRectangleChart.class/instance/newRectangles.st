visualization
newRectangles
	
	^ self traceValues collectWithIndex: [:aTraceValue :index |
		 self newRectangleFor: aTraceValue at: index]