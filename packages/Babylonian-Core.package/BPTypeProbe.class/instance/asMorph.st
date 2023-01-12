morphic
asMorph

	| newMorph |
	newMorph := BPTypeProbeMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph