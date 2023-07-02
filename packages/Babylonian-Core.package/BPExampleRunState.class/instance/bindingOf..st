binding
bindingOf: varName
	| key |
	key := varName asSymbol.
	(state includesKey: key) ifFalse: [
		varName first isUppercase
			ifTrue: [^nil]
			ifFalse: [state at: key put: nil]].
	^ state associationAt: key