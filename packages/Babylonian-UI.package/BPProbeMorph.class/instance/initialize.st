initialization
initialize

	| removeButton |
	super initialize.
	
	allTracesCompleted := false.
	
	tracesMorph := self newTracesMorph.
	self addMorphBack: tracesMorph.
		
	removeButton := self newRemoveButton.
	self addMorphBack: removeButton.