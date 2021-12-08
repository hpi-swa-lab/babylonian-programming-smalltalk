what to show
updateSidePaneMorph: morphSymbol

	self okToChange ifTrue: [
		sidePaneContent = morphSymbol ifFalse: [
		sidePaneContent := morphSymbol.
		self toggleSidePane.
		sidePane ifNotNil: [sidePane morph: self morphForSidePane]]].
		