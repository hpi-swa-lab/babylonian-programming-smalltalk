morphic
asMorph

	| newMorph |
	newMorph := BPProfilingProbeMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph