toolbuilder
buildDefaultBrowserWith: aBuilder

	| browser |	
	browser := super buildDefaultBrowserWith: aBuilder.
	self addSidebarAnnotationsFor: browser.
	
	self sidePaneContent: #none.
	self isSidePaneOpen: false.
	currentWindow ifNil: [currentWindow := browser].
	
	^ browser