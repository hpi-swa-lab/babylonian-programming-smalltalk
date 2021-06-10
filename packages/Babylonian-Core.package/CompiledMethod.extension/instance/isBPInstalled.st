*Babylonian-Core
isBPInstalled
	
	self methodClass ifNotNil: [:class |
		self selector ifNotNil: [:selector | | method |
			method := (class methodDict at: selector ifAbsent: []).
			method isContextSMethod ifTrue: [
				method := method baseMethod.].
			^ method == self]].
	^false