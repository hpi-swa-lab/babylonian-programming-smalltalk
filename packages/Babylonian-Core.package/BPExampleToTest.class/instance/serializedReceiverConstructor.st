private - serializing
serializedReceiverConstructor

	| result |
	^ self example receiverConstructor isEmptyOrNil
		ifFalse: [
			self example receiverConstructor isSymbol ifTrue: [
				^ self exampleMethodClassName, ' ' , self example receiverConstructor].
			(self example isLiveSpecimenReference: self example receiverConstructor) ifTrue: [
				^ '']. 
			result := Compiler evaluate: self example receiverConstructor.
			result isSymbol
				ifTrue: [self exampleMethodClassName, ' ' , result]
				ifFalse: [self example receiverConstructor]]
		ifTrue: [self exampleMethodClassName, ' new']. 