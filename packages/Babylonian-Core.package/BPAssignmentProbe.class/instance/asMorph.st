as yet unclassified
asMorph

	| newMorph |
	newMorph := BPAssignmentProbeMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph