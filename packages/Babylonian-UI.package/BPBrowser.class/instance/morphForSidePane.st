what to show
morphForSidePane

	self sidePaneContent = #bpPrintbugger ifTrue: [^ BPPrintbugger new].