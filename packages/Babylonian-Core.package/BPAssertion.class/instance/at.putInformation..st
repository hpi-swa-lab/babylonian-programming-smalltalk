accessing
at: aKey putInformation: anObject

	^ aKey = #forAssertion:
		ifTrue: [self id: anObject asNumber]
		ifFalse: [super at: aKey putInformation: anObject]