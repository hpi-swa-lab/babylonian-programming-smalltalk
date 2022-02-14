initialization
initialize

	super initialize.
	self initializeProperties.
	
	context := BPPrintbuggerContext newFor: OrderedCollection new.
	
	self addMorph: self newExampleSelectionButtonMorph.