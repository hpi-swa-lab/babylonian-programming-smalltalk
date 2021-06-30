private
stackDepthsFor: aBPExample
	
	|stackDepthsRelativeToFirstLine lowestDepth| 
	stackDepthsRelativeToFirstLine := aBPExample traceValues collect: [:anotherTraceValue | 
		aBPExample traceValues first relativeStackLevelTo: anotherTraceValue].
	
	"the first trace value may be a method with a probe being called in a method which probes after the call, which would result
	in stacks going from right to left instead of the other way around (with being thinner). so normalize the depths before returning."
	lowestDepth := stackDepthsRelativeToFirstLine 
		ifNotEmpty: [stackDepthsRelativeToFirstLine min] 
		ifEmpty: [0].
	
	(lowestDepth < 0)
		ifTrue: [stackDepthsRelativeToFirstLine replace: [:aStackDepth |aStackDepth - lowestDepth]].
	
	^ stackDepthsRelativeToFirstLine