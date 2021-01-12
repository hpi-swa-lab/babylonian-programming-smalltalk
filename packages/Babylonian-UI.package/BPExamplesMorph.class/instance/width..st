geometry
width: newWidth

	self width ~= newWidth ifTrue: [
		self refreshTextComposition].
	^ super width: newWidth