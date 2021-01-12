accessing
receiverConstructorString
	
	
	^ (self isLiveSpecimenReference: self receiverConstructor)
		ifTrue: [(self resolveLiveSpecimen: self receiverConstructor) printString]
		ifFalse: [self receiverConstructor]