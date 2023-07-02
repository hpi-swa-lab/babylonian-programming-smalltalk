toolbuilder
reopen
	
	| builder window |
	builder := ToolBuilder default.
	window := (self buildDefaultBrowserWith: builder).
	isSidePaneOpen ifTrue: [
		window := (self rebuildBrowserWithSidePaneWith: builder).
		window sidePane morph: self sidePane morph.
		window sidePaneContent: self sidePaneContent.].
	
	self 
		reopenBrowser: window
		with: builder 
		ofSize: (currentWindow width)@(currentWindow height)
		