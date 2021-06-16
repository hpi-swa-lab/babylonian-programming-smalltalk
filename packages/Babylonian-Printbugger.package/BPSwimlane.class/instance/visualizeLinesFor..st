private
visualizeLinesFor: aBPExample
	
	|stackDepthsRelativeToFirstLine|
	stackDepthsRelativeToFirstLine := aBPExample traceValues collect: [:anotherTraceValue | aBPExample traceValues first relativeStackLevelTo: anotherTraceValue].
	^ aBPExample traceValues withIndexCollect: [:aTraceValue :anIndex | self visualizeLineFor: aTraceValue relativeTo: (stackDepthsRelativeToFirstLine at: anIndex )]