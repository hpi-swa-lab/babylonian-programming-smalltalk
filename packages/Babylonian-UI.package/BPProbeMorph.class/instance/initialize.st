initialization
initialize
	

	| removeButton |
	super initialize.
	
	allTracesCompleted := false.
	
	"The expressions morph is only added later in #updateFrom:"
	
	tracesMorph := self newTracesMorph.
	self addMorphBack: tracesMorph.
		
	removeButton := self newRemoveButton.
	self addMorphBack: removeButton.