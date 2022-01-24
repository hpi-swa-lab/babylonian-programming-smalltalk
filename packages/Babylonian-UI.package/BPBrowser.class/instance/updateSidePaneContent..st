what to show
updateSidePaneContent: morphSymbol

	self okToChange ifTrue: [
		self sidePaneContent = morphSymbol ifFalse: [
			self sidePaneContent: morphSymbol.
			self toggleSidePaneIfNecessary.
			self sidePane ifNotNil: [self sidePane morph: self morphForSidePane]]].
		