accessing
at: aKey putInformation: anObject
	
	
	aKey = #expression ifTrue: [^ self expression: anObject].
	aKey = #label ifTrue: [^ self label: anObject].
	
	^ super at: aKey putInformation: anObject.