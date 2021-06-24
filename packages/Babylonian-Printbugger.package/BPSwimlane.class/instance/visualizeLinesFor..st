private
visualizeLinesFor: aBPExample
	
	|stackDepthsRelativeToFirstLine lowestDepth| 
	stackDepthsRelativeToFirstLine := aBPExample traceValues collect: [:anotherTraceValue | 
		aBPExample traceValues first relativeStackLevelTo: anotherTraceValue].
	lowestDepth := stackDepthsRelativeToFirstLine 
		ifNotEmpty: [stackDepthsRelativeToFirstLine min] 
		ifEmpty: [0].
	"the first trace value may be a method with a probe being called in a method which probes after the call"
	(lowestDepth < 0)
		ifTrue: [stackDepthsRelativeToFirstLine replace: [:aStackDepth |aStackDepth - lowestDepth]].
	
	^ aBPExample traceValues withIndexCollect: [:aTraceValue :anIndex | 
		self visualizeLineFor: aTraceValue relativeTo: (stackDepthsRelativeToFirstLine at: anIndex )]