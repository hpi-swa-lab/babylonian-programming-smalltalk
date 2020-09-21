accessing
at: aKey putInformation: anObject
	

	^ aKey = #expression
		ifTrue: [self expression: anObject]
		ifFalse: [super at: aKey putInformation: anObject]