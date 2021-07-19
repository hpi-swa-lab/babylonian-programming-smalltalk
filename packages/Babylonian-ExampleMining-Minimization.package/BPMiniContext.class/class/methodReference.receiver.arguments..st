instance creation
methodReference: aMethodReference receiver: anObject arguments: objects

	^ self new
		methodReference: aMethodReference;
		receiver: anObject;
		arguments: objects;
		yourself