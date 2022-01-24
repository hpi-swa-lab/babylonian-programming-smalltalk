initialization
initialize

	super initialize.
	self initializeProperties.
	
	context := BPPrintbuggerContext newFor: BPExamples value activeExamples.
	
	BPExamples value addDependent: self.
	BPExamples value examples do: [:anExample | anExample addDependent: self].
	self updateFrom: BPExamples value activeExamples.