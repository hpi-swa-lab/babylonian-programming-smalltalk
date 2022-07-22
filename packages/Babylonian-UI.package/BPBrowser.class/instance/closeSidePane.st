toolbuilder
closeSidePane

	| builder newWidth |
	builder := ToolBuilder default.
	newWidth := currentWindow width - (self sidePane width + self splitterMorphWidth).
	self 
		reopenBrowser: (self buildDefaultBrowserWith: builder) 
		with: builder 
		ofSize: newWidth@(currentWindow height)