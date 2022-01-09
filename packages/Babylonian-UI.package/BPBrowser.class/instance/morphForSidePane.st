content
morphForSidePane

	self sidePaneContent == #none ifTrue: [^ Morph new hide].
	self sidePaneContent == #bpPrintbugger ifTrue: [^ BPPrintbugger new].