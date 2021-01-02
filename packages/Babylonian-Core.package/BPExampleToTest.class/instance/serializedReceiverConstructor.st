private - serializing
serializedReceiverConstructor
	
	^ self example receiverConstructor isEmptyOrNil
		ifFalse: [self serializedFormOf: self example receiverConstructor]
		ifTrue: [self exampleMethodClassName, ' new']