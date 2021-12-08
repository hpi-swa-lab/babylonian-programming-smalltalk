toolbuilder
buildDefaultBrowserWith: aBuilder

	| browser |
	sidePaneContent := #none.
	isSidePaneVisible := false.
	
	browser := super buildDefaultBrowserWith: aBuilder.
	BPStyler withSidebarAnnotations: [
		(browser submorphNamed: #codePaneTextMorph) scroller submorphs first
			margins: (3@0 corner: 385@0).
		browser extent: 900@600].
			
	currentWindow ifNil: [currentWindow := browser].
	
	^ browser