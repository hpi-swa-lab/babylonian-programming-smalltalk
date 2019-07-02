accessing
at: aKey putInformation: anObject

	^ aKey = #id 
		ifTrue: [self id: anObject asNumber]
		ifFalse: [otherInformation at: aKey put: anObject]