toolbuilder
rebuildBrowserWithSidePaneWith: aBuilder

	| browser windowSpec |	
	windowSpec := self buildWindowSpecWithSidePaneWith: aBuilder.
	self setMultiWindowFor: windowSpec.
	browser := aBuilder build: windowSpec.
	
	self addSidebarAnnotationsFor: browser.
	
	self isSidePaneOpen: true.
		
	^ browser