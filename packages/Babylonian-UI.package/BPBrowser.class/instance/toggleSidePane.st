what to show
toggleSidePane

	| builder newWindow oldSidePaneWidth |
	builder := ToolBuilder default.
		
	self okToChange ifTrue: [
		self isSidePaneVisible
			ifTrue: [sidePaneContent = #none
				ifTrue:  [
					"reopen browser without side pane"
					oldSidePaneWidth := sidePane width.
					newWindow := self rebuildBrowserWithoutSidePaneWith: builder from: currentWindow.
					self reopenBrowser: newWindow with: builder ofSize: (currentWindow width - oldSidePaneWidth)@(currentWindow height).]
				ifFalse: [
					"change morph in sidePane"
					sidePane morph: self morphForSidePane]]
			
			ifFalse: [sidePaneContent = #none
				ifTrue: ["do nothing"]
				ifFalse: [
					"reopen browser with side pane" 
					newWindow := self rebuildBrowserWithSidePaneWith: builder from: currentWindow.
					self reopenBrowser: newWindow with: builder ofSize: (currentWindow width + self sidePaneDefaultWidth)@(currentWindow height).]]].
		
	