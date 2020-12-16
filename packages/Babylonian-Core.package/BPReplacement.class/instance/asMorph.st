morphic
asMorph

	| newMorph |
	newMorph := BPReplacementMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph