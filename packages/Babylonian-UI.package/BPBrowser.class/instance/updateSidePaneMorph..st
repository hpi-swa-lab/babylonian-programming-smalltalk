what to show
updateSidePaneMorph: morphSymbol

	self okToChange ifTrue: [
		sidePaneContent := morphSymbol.
		self toggleSidePane.
		sidePane morph: self morphForSidePane.]