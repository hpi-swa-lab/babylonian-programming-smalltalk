tracing
execute

	| instance |
	self receiverConstructor isEmptyOrNil
		ifFalse: [
			self receiverConstructor isSymbol
				ifTrue: [instance := self method methodClass perform: self receiverConstructor]
				ifFalse: [instance := Compiler evaluate: self receiverConstructor]]
		ifTrue: [instance := self method methodClass new]. 
	^ instance perform: self method selector withArguments: self arguments