tests
testClosesSidePane

	browser buildDefaultBrowserWith: ToolBuilder default.
	browser updateSidePaneContent: BPBrowser probeLogSymbol.
	browser updateSidePaneContent: #none.
	
	self assert: browser isSidePaneOpen == false.
	self assert: browser sidePaneContent == #none.