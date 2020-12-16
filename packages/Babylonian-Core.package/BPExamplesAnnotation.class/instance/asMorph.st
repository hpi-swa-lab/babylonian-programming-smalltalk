ui
asMorph
	
	| newMorph |
	newMorph := BPExamplesMorph new
		exampleAnnotations: self exampleAnnotations;
		annotation: self;
		yourself.
	
	^ BPStyler wantsSidebarAnnotations 
		ifTrue: [
			BPSidebarConnectedMorph new
				connectedMorph: newMorph;
				yourself]
		ifFalse: [newMorph]