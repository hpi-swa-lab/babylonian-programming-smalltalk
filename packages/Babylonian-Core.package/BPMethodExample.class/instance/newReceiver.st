accessing
newReceiver

	^ self receiverConstructor isEmptyOrNil
		ifFalse: [
			self receiverConstructor isSymbol ifTrue: [
				^ self method methodClass perform: self receiverConstructor].
			(self isLiveSpecimenReference: self receiverConstructor) ifTrue: [
				^ self resolveLiveSpecimen: self receiverConstructor]. 
			Compiler evaluate: self receiverConstructor]
		ifTrue: [self method methodClass new]. 