running
setUp
	
	| newSource instrumentedSource |
	originalSource := (BPTestManuallyInstrumentedClass >> #methodB) getSource asString.
	instrumentedSource := (BPTestManuallyInstrumentedClass >> #methodBInstrumented) getSource asString.
	newSource := ({'methodB'} , {'<layer: #bpInstrumented>'} , instrumentedSource lines copyWithoutFirst) joinSeparatedBy: String cr. 
	BPTestManuallyInstrumentedClass compileSilently: newSource.
	printbugger := BPPrintbugger new.
	BPExamples value activeExamples do: [:anExample | anExample isActive:false].