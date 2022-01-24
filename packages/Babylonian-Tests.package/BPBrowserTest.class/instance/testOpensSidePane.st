tests
testOpensSidePane

	browser buildDefaultBrowserWith: ToolBuilder default.
	browser updateSidePaneContent: #bpPrintbugger.
	
	self assert: browser isSidePaneOpen.
	self assert: browser sidePaneContent == #bpPrintbugger.