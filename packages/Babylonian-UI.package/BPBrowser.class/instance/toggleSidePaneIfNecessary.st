what to show
toggleSidePaneIfNecessary

	(isSidePaneOpen not and: sidePaneContent ~= #none) ifTrue: [
		"side pane is closed but shall show some content"
		self openSidePane].
	
	(isSidePaneOpen 	 and: sidePaneContent = #none) ifTrue: [
		"side pane is open but has no content to show"
		self closeSidePane].