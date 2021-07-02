running
setUp
	
	printbugger := BPPrintbugger new.
	self usedMethods do: [:aMethod | 
			aMethod removeProperty: #bpExamples ifAbsent: []].
	