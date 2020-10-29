accessing
newReceiver

	^ self receiverConstructor isEmptyOrNil
		ifFalse: [
			self receiverConstructor isSymbol
				ifTrue: [self method methodClass perform: self receiverConstructor]
				ifFalse: [Compiler evaluate: self receiverConstructor]]
		ifTrue: [self method methodClass new]. 