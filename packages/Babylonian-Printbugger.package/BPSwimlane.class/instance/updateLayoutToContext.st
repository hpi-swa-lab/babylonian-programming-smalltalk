change notifications
updateLayoutToContext
	
	self submorphs allButFirst withIndexDo: [:aTraceValueLine :anIndex | 
		aTraceValueLine firstSubmorph color: (self colorFor: (example traceValues at: anIndex) in: context)].