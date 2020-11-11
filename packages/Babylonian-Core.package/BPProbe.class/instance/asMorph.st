morphic
asMorph
	
	| newMorph connectedMorph |
	newMorph := BPProbeMorph new
		annotation: self;
		yourself.
	connectedMorph := BPSidebarConnectedMorph new
		connectedMorph: newMorph;
		yourself.
	self updateTextAnchorPropertiesOf: connectedMorph.
	^ connectedMorph