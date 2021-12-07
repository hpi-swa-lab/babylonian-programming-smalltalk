content
morphForSidePane

	sidePaneContent == #none ifTrue: [^ Morph new hide].
	sidePaneContent == #bpPrintbugger ifTrue: [^ BPPrintbugger new].