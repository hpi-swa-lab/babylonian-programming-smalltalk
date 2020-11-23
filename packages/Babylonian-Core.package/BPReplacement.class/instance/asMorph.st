morphic
asMorph
	
	| newMorph connectedMorph |
	newMorph := BPReplacementMorph new
		annotation: self;
		yourself.
	connectedMorph := BPSidebarConnectedMorph new
		connectedMorph: newMorph;
		yourself.
	self updateTextAnchorPropertiesOf: connectedMorph.
	^ connectedMorph