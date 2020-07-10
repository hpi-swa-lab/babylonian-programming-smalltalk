morphic
asMorph

	| newMorph |
	newMorph := BPProbeMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph