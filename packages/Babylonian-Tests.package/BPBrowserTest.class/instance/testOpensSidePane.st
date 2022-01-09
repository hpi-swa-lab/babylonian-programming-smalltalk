tests
testOpensSidePane

	browser buildDefaultBrowserWith: ToolBuilder default.
	browser updateSidePaneMorph: #bpPrintbugger.
	
	self assert: browser isSidePaneVisible.
	self assert: browser sidePaneContent == #bpPrintbugger.
	
	browser currentWindow delete.