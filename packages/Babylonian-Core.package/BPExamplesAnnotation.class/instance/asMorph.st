ui
asMorph
	
	| newMorph |
	newMorph := BPExamplesMorph new
		annotation: self;
		yourself.
		
	^ BPStyler wantsSidebarAnnotations 
		ifTrue: [
			BPSidebarConnectedMorph new
				connectedMorph: newMorph;
				yourself]
		ifFalse: [newMorph]