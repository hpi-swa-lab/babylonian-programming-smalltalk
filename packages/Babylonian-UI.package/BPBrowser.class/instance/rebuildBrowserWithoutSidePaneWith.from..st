toolbuilder
rebuildBrowserWithoutSidePaneWith: aBuilder from: oldWindow

	| browser |
	browser := self buildDefaultBrowserWith: aBuilder.
	sidePane := nil.
	
	^ browser