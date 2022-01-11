tests
testClosesSidePane

	browser buildDefaultBrowserWith: ToolBuilder default.
	browser updateSidePaneContent: #bpPrintbugger.
	browser updateSidePaneContent: #none.
	
	self assert: browser isSidePaneOpen == false.
	self assert: browser sidePaneContent == #none.
	
	browser currentWindow delete.