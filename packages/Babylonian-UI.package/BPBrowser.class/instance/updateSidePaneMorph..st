what to show
updateSidePaneMorph: morphSymbol

	self okToChange ifTrue: [
		self sidePaneContent = morphSymbol ifFalse: [
			self sidePaneContent: morphSymbol.
			self toggleSidePane.
			sidePane ifNotNil: [sidePane morph: self morphForSidePane]]].
		