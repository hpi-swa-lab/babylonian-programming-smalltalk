what to show
toggleSidePane

	
	"toggle visibility / existance of side pane in browser"
	self okToChange ifTrue:
		[self flag: #todo. "toggle visibility of side pane from (#otherContent to #none) and (#none to #otherContent)"].