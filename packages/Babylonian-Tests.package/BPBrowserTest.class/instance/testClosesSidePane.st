tests
testClosesSidePane

	browser buildDefaultBrowserWith: ToolBuilder default.
	browser updateSidePaneMorph: #bpPrintbugger.
	browser updateSidePaneMorph: #none.
	
	self assert: browser isSidePaneVisible == false.
	self assert: browser sidePaneContent == #none.
	
	browser currentWindow delete.