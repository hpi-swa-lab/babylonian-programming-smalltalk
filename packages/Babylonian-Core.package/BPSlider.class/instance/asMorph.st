ui
asMorph
	
	| newMorph connectedMorph |
	newMorph := BPSliderMorph new
		annotation: self;
		yourself.
	connectedMorph := BPSidebarConnectedMorph new
		connectedMorph: newMorph;
		yourself.
	self updateTextAnchorPropertiesOf: connectedMorph.
	^ connectedMorph