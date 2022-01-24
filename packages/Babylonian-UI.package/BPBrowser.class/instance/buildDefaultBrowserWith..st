toolbuilder
buildDefaultBrowserWith: aBuilder

	| browserWindow |	
	browserWindow := super buildDefaultBrowserWith: aBuilder.
	self addSidebarAnnotationsFor: browserWindow.
	
	self sidePaneContent: #none.
	self isSidePaneOpen: false.
	currentWindow ifNil: [currentWindow := browserWindow].
	
	^ browserWindow