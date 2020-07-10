morphic
asMorph

	| newMorph |
	newMorph := BPAssertionMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph