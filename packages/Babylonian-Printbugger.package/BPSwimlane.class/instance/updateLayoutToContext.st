change notifications
updateLayoutToContext

	self lineSubMorphs withIndexDo: [:aTraceValueLine :anIndex | 
		(aTraceValueLine submorphNamed: #stackBar) submorphsDo: [:aStackEntry |
			aStackEntry color: (self colorFor: (aStackEntry valueOfProperty: #stackMethodReference))]].