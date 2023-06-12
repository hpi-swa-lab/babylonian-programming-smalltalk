tests
testOpensSidePane

	browser buildDefaultBrowserWith: ToolBuilder default.
	browser updateSidePaneContent: BPBrowser probeLogSymbol.
	
	self assert: browser isSidePaneOpen.
	self assert: browser sidePaneContent == BPBrowser probeLogSymbol.