accessing
connectedMorph: anObject
	
	connectedMorph := anObject.
	anObject wantsSidebarLine 
		ifTrue: [self line show]
		ifFalse: [self line hide].
	