change notifications
updateLayoutToContext
	
	self lineSubMorphs withIndexDo: [:aTraceValueLine :anIndex | 
		(aTraceValueLine submorphNamed: #stackBar) color: (self colorFor: (example traceValues at: anIndex) in: context)].