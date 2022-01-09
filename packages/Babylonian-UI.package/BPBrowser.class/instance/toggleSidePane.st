what to show
toggleSidePane

	| builder newWindow oldSidePaneWidth |
	builder := ToolBuilder default.
		
	self okToChange ifTrue: [
		isSidePaneVisible
			ifTrue: [sidePaneContent = #none
				ifTrue:  [
					oldSidePaneWidth := sidePane width.
					newWindow := self rebuildBrowserWithoutSidePaneWith: builder from: currentWindow.
					self reopenBrowser: newWindow with: builder ofSize: (currentWindow width - oldSidePaneWidth)@(currentWindow height).]
				ifFalse: [
					sidePane morph: self morphForSidePane]]
			
			ifFalse: [sidePaneContent = #none
				ifTrue: ["do nothing"]
				ifFalse: [
					newWindow := self rebuildBrowserWithSidePaneWith: builder from: currentWindow.
					self reopenBrowser: newWindow with: builder ofSize: (currentWindow width + self sidePaneDefaultWidth)@(currentWindow height).]]].
		
	