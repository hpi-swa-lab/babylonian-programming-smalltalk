private
visualizeLinesFor: aBPExample
	
	^ aBPExample traceValues collect: [:aTraceValue | self visualizeLineFor: aTraceValue]