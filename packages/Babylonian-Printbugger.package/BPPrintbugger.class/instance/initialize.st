initialization
initialize

	super initialize.
	self initializeProperties.
	
	self examples: OrderedCollection new.
	context := BPPrintbuggerContext newFor: OrderedCollection new.
	
	self updateFrom: OrderedCollection new.