accessing
newReceiver
	
	| result |
	^ self receiverConstructor isEmptyOrNil
		ifFalse: [
			self receiverConstructor isSymbol ifTrue: [
				^ self method methodClass perform: self receiverConstructor].
			self receiverConstructor isLiveSpecimenReference ifTrue: [
				^ self resolveLiveSpecimen: self receiverConstructor]. 
			result := Compiler evaluate: self receiverConstructor for: self method methodClass.
			result isSymbol
				ifTrue: [self method methodClass perform: result]
				ifFalse: [result]]
		ifTrue: [self method methodClass new]. 