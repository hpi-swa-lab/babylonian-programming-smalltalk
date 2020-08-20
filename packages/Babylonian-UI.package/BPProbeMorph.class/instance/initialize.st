as yet unclassified
initialize

	| removeButton |
	super initialize.
	
	allTracesCompleted := false.
	
	tracesMorph := self newTracesMorph.
	self addMorphBack: tracesMorph.
		
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorphBack: removeButton.