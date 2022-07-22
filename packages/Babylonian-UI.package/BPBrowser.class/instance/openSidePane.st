toolbuilder
openSidePane

	| builder newWidth |
	builder := ToolBuilder default.
	newWidth := currentWindow width + (self sidePaneDefaultWidth - self splitterMorphWidth).
	self 
		reopenBrowser: (self rebuildBrowserWithSidePaneWith: builder) 
		with: builder 
		ofSize: newWidth@(currentWindow height)