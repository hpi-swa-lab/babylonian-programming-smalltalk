layout
layoutChanged
	
	super layoutChanged.
	(self owner respondsTo: #releseParagraph) ifTrue: [
		"We are in a text morph"
		self owner releaseParagraph.
		self owner editView restoreSelectionInterval].