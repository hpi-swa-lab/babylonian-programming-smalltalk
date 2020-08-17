accessing
at: aKey putInformation: anObject

	^ aKey = #id 
		ifTrue: [self id: anObject]
		ifFalse: [otherInformation at: aKey put: anObject]