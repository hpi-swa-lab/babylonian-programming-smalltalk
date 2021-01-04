accessing
newReceiver
	
	| result |
	^ self receiverConstructor isEmptyOrNil
		ifFalse: [
			self receiverConstructor isSymbol ifTrue: [
				^ self method methodClass perform: self receiverConstructor].
			(self isLiveSpecimenReference: self receiverConstructor) ifTrue: [
				^ self resolveLiveSpecimen: self receiverConstructor]. 
			result := Compiler evaluate: self receiverConstructor.
			result isSymbol
				ifTrue: [self method methodClass perform: result]
				ifFalse: [result]]
		ifTrue: [self method methodClass new]. 