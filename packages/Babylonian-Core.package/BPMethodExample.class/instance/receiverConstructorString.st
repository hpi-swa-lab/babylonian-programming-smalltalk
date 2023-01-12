accessing
receiverConstructorString
	
	^ self receiverConstructor isLiveSpecimenReference
		ifTrue: [self receiverConstructor printString]
		ifFalse: [self receiverConstructor isEmptyOrNil
				ifTrue: ['#new']
				ifFalse: [self receiverConstructor]]