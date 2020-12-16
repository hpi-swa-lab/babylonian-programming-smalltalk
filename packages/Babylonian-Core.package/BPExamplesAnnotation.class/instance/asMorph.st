ui
asMorph
	
	| newMorph |
	newMorph := BPExamplesMorph new
		exampleAnnotations: self exampleAnnotations;
		annotation: self;
		yourself.
		
	^ BPSidebarConnectedMorph new
		connectedMorph: newMorph;
		yourself