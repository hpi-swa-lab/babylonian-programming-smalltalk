private
visualizeLinesFor: aBPExample
	
	|stackDepthsRelativeToFirstLine| 
	stackDepthsRelativeToFirstLine := self stackDepthsFor: aBPExample.
	
	^ aBPExample traceValues withIndexCollect: [:aTraceValue :anIndex | 
		self visualizeLineFor: aTraceValue relativeTo: (stackDepthsRelativeToFirstLine at: anIndex )]