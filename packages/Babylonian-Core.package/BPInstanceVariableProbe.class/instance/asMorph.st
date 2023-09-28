morphic
asMorph

	| newMorph |
	newMorph := BPInstanceVariableProbeMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph