ui
asMorph
	
	| newMorph |
	newMorph := BPSliderMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph