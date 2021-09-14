constants
barWidthFor: aTraceValue relativeTo: aStackRelation
	
	^ self stackDepth + (aStackRelation * self stackDepth)
	
	