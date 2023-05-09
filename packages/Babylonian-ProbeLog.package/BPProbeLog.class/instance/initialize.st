initialization
initialize

	super initialize.
	self initializeProperties.
	
	context := BPProbeLogContext newFor: OrderedCollection new.
	
	self addMorph: self newExampleSelectionButtonMorph.