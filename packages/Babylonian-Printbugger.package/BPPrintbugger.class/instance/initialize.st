initialization
initialize
	
	super initialize.
	
	self initializeWindowProperties.
	self initializeScrollableCanvas.
	context := BPPrintbuggerContext newFor: BPExamples value activeExamples.
	
	BPExamples value addDependent: self.
	BPExamples value examples do: [:anExample | anExample addDependent: self].
	self updateFrom: BPExamples value activeExamples.
	