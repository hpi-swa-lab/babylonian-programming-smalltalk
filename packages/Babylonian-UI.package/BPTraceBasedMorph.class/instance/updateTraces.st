stepping and presenter
updateTraces
	
	| newTraces tracesChanged |
	(self methodReference isNil and: [self wantsMethodReference]) ifTrue: [^false].
	self resetHeight.
	
	newTraces := self getTraces asIdentitySet.
	tracesChanged := newTraces ~= displayedTraces.
	
	tracesChanged ifTrue: [
		displayedTraces do: [:trace | trace removeDependent: self].
		newTraces do: [:trace | trace addDependent: self].
		self updateFrom: newTraces.
		displayedTraces := newTraces.
		"Height might have changed so we have to recompose the text."
		self refreshTextComposition].