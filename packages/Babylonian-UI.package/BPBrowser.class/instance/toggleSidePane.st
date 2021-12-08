what to show
toggleSidePane

	| builder newWindow deleteWindow |
	builder := ToolBuilder default.
		
	self okToChange ifTrue: [
		isSidePaneVisible
			ifTrue: [sidePaneContent = #none
				ifTrue:  [newWindow := self rebuildBrowserWithoutSidePaneWith: builder from: currentWindow.
					(builder open: newWindow) 
						width: currentWindow width - 300; 
						position: currentWindow position.
					deleteWindow := currentWindow.
					currentWindow := newWindow.
					deleteWindow delete.
					]
				ifFalse: [sidePane morph: self morphForSidePane]]
			
			ifFalse: [sidePaneContent = #none
				ifTrue: []
				ifFalse: [newWindow := self rebuildBrowserWithSidePaneWith: builder from: currentWindow.
					"newWindow position: currentWindow position."
					(builder open: newWindow) 
						width: currentWindow width + 300;
						position: currentWindow position.
					deleteWindow := currentWindow.
					currentWindow := newWindow.
					deleteWindow delete.
					]].
		].
		
	