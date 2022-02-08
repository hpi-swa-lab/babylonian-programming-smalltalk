initialization
initialize

	super initialize.
	self initializeVisualProperties.
	
	"So we can abandon this object as soon as its displayed example is deleted somewhere else"
	BPExamples value addDependent: self.
	
	example := BPNilExample new.
	context := BPPrintbuggerContext new.
	
	self visualize.