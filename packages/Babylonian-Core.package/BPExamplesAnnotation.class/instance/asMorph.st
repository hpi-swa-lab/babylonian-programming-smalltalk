ui
asMorph
	
	| newMorph |
	newMorph := BPExamplesMorph new
		annotation: self;
		yourself.
		
	self examples addDependent: newMorph.
		
	^ BPStyler wantsSidebarAnnotations 
		ifTrue: [
			BPSidebarConnectedMorph new
				connectedMorph: newMorph;
				yourself]
		ifFalse: [newMorph]