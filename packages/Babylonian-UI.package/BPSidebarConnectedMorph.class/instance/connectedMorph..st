accessing
connectedMorph: anObject
	
	connectedMorph := anObject.
	anObject wantsSidebarLine 
		ifTrue: [self line hide]
		ifFalse: [self line show].
	