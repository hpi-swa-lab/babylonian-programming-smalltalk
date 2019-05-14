running
setUp

	| newSource |
	originalSource := (BPTestManuallyInstrumentedClass >> #methodBInstrumented) getSource asString.
	newSource := ({'methodB'} , {'<layer: #bpInstrumented>'} , originalSource lines copyWithoutFirst) joinSeparatedBy: String cr. 
	BPTestManuallyInstrumentedClass compileSilently: newSource.