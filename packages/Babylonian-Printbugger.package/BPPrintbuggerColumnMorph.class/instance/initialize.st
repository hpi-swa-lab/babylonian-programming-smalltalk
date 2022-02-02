initialization
initialize

	super initialize.
	self initializeVisualProperties.
	
	example := BPNilExample new.
	context := BPPrintbuggerContext new.
	
	self visualize.